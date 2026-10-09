# Status do Projeto One-Shot

> Documento atualizado após a migração **Serverpod 3.4.4 → 4.0.4** e **Flutter 3.32.5 → 3.47.5** (FVM). Descreve a arquitetura e as funcionalidades realmente implementadas no repositório.

## Visão geral

O One-Shot é um sistema de gestão para o mercado de tiro esportivo (CAC, clubes de tiro e armeiros), composto por um backend Serverpod, um client Dart compartilhado e três aplicações Flutter:

| Componente | Pacote | Descrição |
|---|---|---|
| Backend | `oneshot_server` | Servidor Serverpod 4.0.4 (Dart 3.13) com endpoints, gateways de integração e regras de negócio |
| Client | `oneshot_client` | Client gerado (protocolo Serverpod) consumido pelos apps |
| App do atirador | `apps/shooter_app` | App Flutter do atirador (CAC): armas, acessórios, documentos, perfil |
| Backoffice | `apps/backoffice_web` | Backoffice web: usuários, empresas, perfis, produtos, assinaturas, financeiro |
| Portal do clube | `apps/company_portal` | Portal do clube/empresa: gestão de empresas, assinaturas e financeiro |

## Toolchain

- **Flutter/Dart via FVM**: `.fvmrc` fixa Flutter **3.47.5** (Dart 3.13).
- **SDKs dos pubspecs**: `sdk: '>=3.13.0 <4.0.0'` (server/client) e `sdk: ^3.13.0` + `flutter: '>=3.44.4'` (apps).
- **Serverpod**: **4.0.4** em todos os pacotes (`serverpod`, `serverpod_auth_*`, `serverpod_test`, `serverpod_flutter`).
- Comandos: `fvm flutter pub get|analyze|test` nos apps; `fvm dart pub get|analyze|test` e `serverpod generate` no server.

## Backend (`oneshot_server`)

Organização em camadas dentro de `lib/`:

| Área | Conteúdo |
|---|---|
| `lib/src/endpoints/` | Endpoints expostos ao client (20 arquivos) |
| `lib/src/domain/` | `repositories/` (interfaces) e `use_cases/` (regras de aplicação) |
| `lib/src/data/` | Implementações de repositórios (persistência Serverpod) |
| `lib/src/gateway/` | Integrações externas — hoje: **Asaas** (`asaas/` com client, services, handlers de webhook e exceptions) |
| `lib/src/core/` | `config/` (AppConfig com YAML + EmailSettings), `email/` (EmailService SMTP), `exceptions/`, `injections/` (container de dependências `sl`), `helpers/`, `repository/` |
| `lib/src/generated/` | Código gerado pelo Serverpod 4 (não editar) |
| `lib/src/web/` | Rotas web (`root.dart`) e widgets (`built_with_serverpod_page.dart`) |
| `lib/server.dart` | Bootstrap: `Injections.init()`, `AuthConfig` (callbacks de e-mail), rotas web, future calls, `pod.start()` |

### Módulos de negócio implementados (endpoints)

| Módulo | Endpoints |
|---|---|
| Armas e itens | `firearm_endpoint`, `accessory_endpoint`, `ammunition_endpoint`, `document_endpoint`, `training_endpoint` |
| Serviços | `gunsmith_endpoint`, `reload_endpoint` |
| Usuários e perfis | `user_endpoint`, `profile_endpoint`, `security_role_endpoint`, `company_endpoint` |
| Produtos e assinaturas | `product_endpoint`, `product_group_endpoint`, `subscription_plan_endpoint` |
| Financeiro | `financial_entry_endpoint`, `bank_account_endpoint`, `payment_endpoint` (Asaas), `invoice_endpoint` |
| Integrações | `brasil_api_gateway_endpoint` (CNPJ/CEP/bancos), `via_cep_gateway_endpoint` |

### Autenticação e e-mail

- Autenticação via `serverpod_auth` (e-mail/senha) com fluxo de validação e reset de senha.
- Os callbacks `sendValidationEmail` / `sendPasswordResetEmail` são implementados por `EmailService` (`lib/src/core/email/email_service.dart`):
  - Sem SMTP configurado (dev): registra o código no log do servidor e retorna sucesso.
  - Com SMTP configurado (`email:` nos YAMLs de config + senha `email` em `config/passwords.yaml`): envia e-mail real via pacote `mailer`.

### Future calls

- `birthday_reminder` (`lib/src/birthday_reminder.dart`) — registrado automaticamente pelo código gerado (`pod.futureCalls`) e disparado no bootstrap como exemplo de agendamento.

### Configuração de ambientes

- `config/development.yaml`, `config/production.yaml`, `config/staging.yaml` — banco padronizado em **`oneshot`** (db) / **`oneshot_user`** (usuário); `runMode` e `apiServer`/`webServer` por ambiente.
- `production.yaml` mantém `requireSsl: true` e hosts reais a preencher antes do próximo deploy.
- Redis permanece `enabled: false` (sem uso de cache/filas no momento; containers disponíveis no compose).

## Apps Flutter

Todos usam a mesma base arquitetural: **Clean Architecture + MVVM** com `get_it` (injeção), `qlevar_router` (rotas), `ViewmodelState` genérico ligando `StatefulWidget` ↔ ViewModel, e Design System próprio (`DSTokens`).

### `apps/shooter_app` — app do atirador

- Módulos: armas (`firearms/`), acessórios (`accessories/`), documentos (`documents/`), perfil (`profile/`), home com atalhos.
- Login/cadastro com `serverpod_auth_email_flutter` + `SessionManager`.
- Client configurado com `authKeyProvider` (FlutterAuthenticationKeyManager) e `FlutterConnectivityMonitor` — padrão Serverpod 4.

### `apps/backoffice_web` — backoffice

- Módulos: dashboard, usuários (`users/` com formulário completo e busca), empresas (`companies/`), perfis e permissões (`roles/`), produtos e grupos (`products/`), assinaturas (`subscriptions/`), financeiro (`finance/`: contas bancárias, lançamentos a pagar/receber).

### `apps/company_portal` — portal do clube

- Módulos: dashboard com switcher de módulos, empresas, assinaturas e financeiro (contas bancárias, a pagar/receber).

## Infraestrutura e Deploy

### Docker

- `docker-compose.yaml`: `postgres` e `postgres_test` (pgvector/pg16), `redis` (v8), `nginx-proxy-manager` (versão pinada), `backend` (Dockerfile `dart:3.13.5`) e `backoffice-web` (Dockerfile `ghcr.io/cirruslabs/flutter:3.47.5`).
- Segredos do Postgres/Redis vêm de `.env` (versionado apenas `.env.example`; `.env` no `.gitignore`).
- Banco/usuário padrão: `oneshot` / `oneshot_user`.

### CI/CD (GitHub Actions)

| Workflow | Estado |
|---|---|
| `.github/workflows/ci.yml` | Ativo — push/PR em `develop`/`main`: analyze + testes do server (com `postgres_test`) e dos 3 apps (Flutter 3.47.5) |
| `.github/workflows/deployment-aws.yml` | Ativo — deploy AWS: Dart 3.13, `dart compile exe` e execução do binário compilado via scripts em `deploy/aws/` |
| `.github/workflows/deployment-gcp.yml` | **Desativado** (disparo automático removido; GCP não é alvo ativo) |

## Testes

- **Server** (`oneshot_server/test/integration/`): testes de integração reais com `serverpod_test` + `RollbackDatabase` (isolamento transacional):
  - `subscription_plan_endpoint_test.dart` — CRUD de planos, recálculo de valor total, filtros por status/tipo.
  - `product_group_endpoint_test.dart` — CRUD de grupos de produto e filtro por módulo de origem.
- **Apps**: um smoke test de widget por app (`test/widget_test.dart`) consumido pelo CI.

## Pendências conhecidas

1. **Migração de role no banco existente**: volumes antigos do Postgres foram criados com o usuário `postgres`; para os novos configs (usuário `oneshot_user`) é preciso criar a role com grants (e `CREATEDB`, exigido pelos bancos efêmeros dos testes) ou recriar os volumes de desenvolvimento.
2. **SMTP de produção**: provedor de e-mail ainda não definido; enquanto isso o fluxo de cadastro funciona em dev via log do servidor.
3. **Hosts de produção**: `config/production.yaml` ainda contém hosts placeholder a substituir antes do próximo deploy.
4. **Redis**: desabilitado nos configs; revisar quando houver necessidade de cache/filas.
5. **Serviço de estoque / ordens de serviço**: telas do portal ainda exibem "em breve" (módulos planejados).
