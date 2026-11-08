# One-Shot

> Plataforma integrada de gestão para o ecossistema de tiro esportivo (CACs, clubes de tiro e armeiros).

---

## Sobre

O **One-Shot** é uma solução completa desenvolvida para modernizar a administração, conformidade regulatória e a experiência digital no segmento de tiro esportivo. O sistema centraliza a gestão de acervo (armas, munições, recargas e acessórios), agendamentos de treinamentos, controle financeiro, planos de assinatura, emissão de ordens de serviço de armaria e comunicação com órgãos reguladores e gateways de pagamento.

Construído sob uma arquitetura **monorepo full-stack Dart**, o projeto integra um servidor de alta performance com persistência relacional e geração automática de clientes RPC tipados consumidos por três aplicações Flutter (web e mobile).

---

## Estrutura do Monorepo

O repositório é organizado nos seguintes módulos e aplicações:

| Pacote / Diretório | Tipo | Descrição | Stack Principal |
|---|---|---|---|
| [`oneshot_server`](file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_server) | Backend | Servidor RPC, regras de negócio, gateways externos e persistência | Serverpod 4.4.11, PostgreSQL 16 |
| [`oneshot_client`](file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_client) | Client SDK | Cliente Dart fortemente tipado gerado automaticamente pelo Serverpod | Dart 3.13 |
| [`apps/shooter_app`](file:///Users/ggbailheri/Developer/oneshot/oneshot/apps/shooter_app) | Mobile / Web App | Aplicativo do atirador (CAC): gestão de acervo, documentos, treinos e perfil | Flutter 3.47.5, Serverpod Flutter |
| [`apps/backoffice_web`](file:///Users/ggbailheri/Developer/oneshot/oneshot/apps/backoffice_web) | Web App | Painel administrativo global: empresas, perfis, assinaturas, financeiro e produtos | Flutter Web, Qlevar Router, GetIt |
| [`apps/company_portal`](file:///Users/ggbailheri/Developer/oneshot/oneshot/apps/company_portal) | Web App | Portal do clube de tiro / empresa conveniada: gestão de sócios, planos e contas | Flutter Web, Qlevar Router, GetIt |

---

## Arquitetura e Decisões de Design (ADRs)

O projeto adota padrões arquiteturais consolidados e documentados em Architecture Decision Records (ADRs):

- **Backend Desacoplado:** Clean Architecture no Serverpod com separação estrita entre Endpoints (transporte/autenticação), Use Cases (regras de negócio) e Repositories (persistência ORM) — [ADR-0001](file:///Users/ggbailheri/Developer/oneshot/oneshot/docs/adr/0001-arquitetura-backend-clean-architecture-serverpod.md).
- **Gerenciamento de Estado no Front-end:** Padrão MVVM com `ViewmodelState` acoplado a ViewModels (`ChangeNotifier`) e injeção via `GetIt` — [ADR-0002](file:///Users/ggbailheri/Developer/oneshot/oneshot/docs/adr/0002-padrao-mvvm-viewmodelstate-getit-flutter.md).
- **Roteamento Declarativo:** Navegação web e mobile gerenciada via `qlevar_router`, utilizando `IPresenter` para desacoplar transições de tela dos ViewModels — [ADR-0003](file:///Users/ggbailheri/Developer/oneshot/oneshot/docs/adr/0003-roteamento-declarativo-qlevar-router-ipresenter.md).
- **Comunicação RPC Tipada:** Eliminação de REST manual através do cliente Serverpod RPC com tipagem estática ponta a ponta — [ADR-0004](file:///Users/ggbailheri/Developer/oneshot/oneshot/docs/adr/0004-monorepo-full-stack-dart-rpc-serverpod-client.md).
- **Testes de Integração com Banco Efêmero:** Validação de endpoints e regras via `serverpod_test` conectado a um PostgreSQL dedicado com rollback transacional automático (`RollbackDatabase`) — [ADR-0005](file:///Users/ggbailheri/Developer/oneshot/oneshot/docs/adr/0005-testes-integracao-banco-efemero-serverpod-test.md).
- **Componentização Estrita de UI:** Proibição de métodos auxiliares retornando `Widget`; encapsulamento obrigatório em classes `StatelessWidget`/`StatefulWidget` em arquivos individuais na pasta `widgets/` — [ADR-0006](file:///Users/ggbailheri/Developer/oneshot/oneshot/docs/adr/0006-componentizacao-estrita-ui-classes-widget.md).

O catálogo completo com histórico e status pode ser consultado no [Índice de ADRs (docs/adr/INDEX.md)](file:///Users/ggbailheri/Developer/oneshot/oneshot/docs/adr/INDEX.md).

### Fluxos de Negócio & Dinâmica Operacional

Para compreender a execução em tempo de execução, consulte os diagramas e especificações em [docs/flows/](file:///Users/ggbailheri/Developer/oneshot/oneshot/docs/flows/INDEX.md):

1. [Fluxo 01 — Financeiro & Integração Asaas](file:///Users/ggbailheri/Developer/oneshot/oneshot/docs/flows/01-fluxo-financeiro-asaas.md): Subcontas, faturamento (PIX/Boleto/Cartão) e conciliação de webhooks.
2. [Fluxo 02 — Gestão de Acervo e Armamento (CAC)](file:///Users/ggbailheri/Developer/oneshot/oneshot/docs/flows/02-fluxo-acervo-cac-armas.md): Ciclo de vida da arma, documentos regulatórios (CRAF/GT) e habitualidades.
3. [Fluxo 03 — Armaria e Ordens de Serviço (OS)](file:///Users/ggbailheri/Developer/oneshot/oneshot/docs/flows/03-fluxo-armaria-ordem-servico.md): Manutenção, customização, cálculo de orçamentos e histórico técnico.
4. [Fluxo 04 — Recarga de Munições e Testes Balísticos](file:///Users/ggbailheri/Developer/oneshot/oneshot/docs/flows/04-fluxo-recarga-municoes.md): Débito de insumos, crédito de munições recarregadas e cronógrafo.
5. [Fluxo 05 — Autenticação, Perfis e RBAC](file:///Users/ggbailheri/Developer/oneshot/oneshot/docs/flows/05-fluxo-autenticacao-rbac-multitenant.md): Sessão de usuário, perfil preguiçoso (`UserProfile`) e controle de acesso multitenant.

---

## Pré-requisitos

Certifique-se de ter instalado em seu ambiente:

- **Docker & Docker Compose** (para PostgreSQL 16 com extensão pgvector e Redis)
- **FVM (Flutter Version Management)** — o repositório fixa o Flutter **3.47.5** no arquivo `.fvmrc`
- **Dart SDK 3.13+** (gerenciado automaticamente pelo FVM)
- **Serverpod CLI 4.4.11**:
  ```bash
  dart pub global activate serverpod_cli 4.4.11
  ```

---

## Configuração do Ambiente

### 1. Clonar o repositório e configurar variáveis

```bash
git clone <URL_DO_REPOSITORIO> oneshot
cd oneshot
cp .env.example .env
```

> **Nota:** Revise as credenciais do banco e configurações de ambiente no arquivo `.env`.

### 2. Subir os serviços de infraestrutura (Docker)

Inicie os bancos de dados PostgreSQL (desenvolvimento e testes) e o Redis:

```bash
docker compose up -d postgres postgres_test redis
```

### 3. Instalar dependências e gerar o cliente

Instale os pacotes dos módulos via FVM:

```bash
# Backend e geração de contratos RPC
cd oneshot_server
fvm dart pub get
serverpod generate
cd ..

# Client compartilhado
cd oneshot_client
fvm dart pub get
cd ..

# Aplicações Flutter
cd apps/backoffice_web && fvm flutter pub get && cd ../..
cd apps/company_portal && fvm flutter pub get && cd ../..
cd apps/shooter_app && fvm flutter pub get && cd ../..
```

---

## Executando as Aplicações

### Backend (`oneshot_server`)

Inicie o servidor Serverpod apontando para o modo de desenvolvimento:

```bash
cd oneshot_server
fvm dart bin/main.dart --run-mode development
```

O servidor inicializará com a API RPC por padrão em `http://localhost:8080` e os endpoints web/insights em `http://localhost:8082`.

### Backoffice Web (`apps/backoffice_web`)

```bash
cd apps/backoffice_web
fvm flutter run -d chrome
```

### Portal do Clube (`apps/company_portal`)

```bash
cd apps/company_portal
fvm flutter run -d chrome
```

### App do Atirador (`apps/shooter_app`)

```bash
cd apps/shooter_app
# Para rodar no emulador/dispositivo conectado ou Chrome
fvm flutter run
```

---

## Executando Testes

### Testes do Backend (Integração)

Os testes de integração do servidor executam sobre o container `postgres_test` com isolamento transacional:

```bash
cd oneshot_server
fvm dart test test/integration/
```

### Testes dos Aplicativos Flutter

```bash
# Backoffice
cd apps/backoffice_web && fvm flutter test && cd ../..

# Portal do Clube
cd apps/company_portal && fvm flutter test && cd ../..

# App do Atirador
cd apps/shooter_app && fvm flutter test && cd ../..
```

---

## Integrações Externas

- **Asaas:** Gateway de pagamentos (PIX, boleto e cartão), assinaturas recorrentes e webhooks (`oneshot_server/lib/src/gateway/asaas/`).
- **BrasilAPI / ViaCEP:** Consulta automatizada de dados de CNPJ, CEP e informações bancárias.
- **Serviço de E-mail (SMTP):** Disparo de e-mails de confirmação e recuperação de senha via pacote `mailer` (`EmailService`), com fallback em console para ambiente local.

---

## CI/CD

O repositório possui fluxos automatizados no GitHub Actions configurados em [`.github/workflows/`](file:///Users/ggbailheri/Developer/oneshot/oneshot/.github):

- **`ci.yml`:** Acionado em pushes e Pull Requests para `develop` e `main`. Executa linting (`analyze`), compilação e a suíte completa de testes do servidor (com container `postgres_test`) e dos 3 apps Flutter.
- **`deployment-aws.yml`:** Pipeline de compilação em executável nativo (`dart compile exe`) e deploy na AWS.

---

## Licença

Este projeto é de uso proprietário e confidencial. Todos os direitos reservados.

