# TASK PLAN – MiniStack

## 1. Identificação
- **Feature**: importacao-extrato-ofx
- **Intent**: `docs/specs/features/importacao-extrato-ofx/v1/intent.md`
- **Scope**: `docs/specs/features/importacao-extrato-ofx/v1/scope.md`
- **Responsável**: OneShot / Antigravity
- **Data**: 08/11/2026
- **Status**: Aprovado

---

## 2. Objetivo Técnico
Entregar o fluxo completo de importação e processamento de extratos bancários no formato OFX para o Backoffice Web, incluindo parser tolerante a SGML/XML, validação sanitizada de pertinência de agência e conta bancária, persistência idempotente no PostgreSQL via Serverpod, e interface web no Flutter para visualização de prévia e conciliação direta com lançamentos financeiros (`financial_entries`).

---

## 3. Macro-Fases (alto nível)
- **Fase 1 – Modelagem & Parser OFX (Backend)**
  - Objetivo: Definir modelos de dados Serverpod, gerar código do protocolo e implementar parser utilitário com sanitização de agência/conta.
  - Tasks: T1
- **Fase 2 – Regras de Negócio, Repositório e Endpoints (Backend)**
  - Objetivo: Implementar serviço com verificação de conta, persistência com idempotência por FITID e métodos RPC para preview, importação e conciliação.
  - Tasks: T2
- **Fase 3 – Upload, Preview e Validação de Conta (Frontend)**
  - Objetivo: Implementar repositório client no Backoffice, injeções GetIt e diálogo de upload de OFX com bloqueio visual por divergência de conta.
  - Tasks: T3
- **Fase 4 – Extrato e Conciliação Financeira (Frontend)**
  - Objetivo: Criar página de conciliação bancária com extrato reativo, filtros de status e modal de liquidação vinculando transações a lançamentos financeiros.
  - Tasks: T4

---

## 4. Lista de Tasks (visão macro)

| ID | Nome da Task | Arquivo | Fase | Dependências | Pode Rodar em Paralelo? (derivado) | Status |
|----|-------------|---------|------|-------------|------------------------------------|--------|
| T1 | Modelos Serverpod e Parser OFX Helper | [T1](tasks/T1.md) | Fase 1 | — | Não | Concluído |
| T2 | Repositório, Serviço e Endpoint de Transações | [T2](tasks/T2.md) | Fase 2 | T1 | Não | Concluído |
| T3 | Repositório Client e Diálogo de Importação OFX | [T3](tasks/T3.md) | Fase 3 | T2 | Não | Concluído |
| T4 | Página de Extrato e Fluxo de Conciliação Bancária | [T4](tasks/T4.md) | Fase 4 | T3 | Não | Concluído |

---

## 5. Ordem de Execução

```
T1 -> T2 -> T3 -> T4
```

### Grafo de Dependências
| Task | Depende de | Status |
|------|------------|--------|
| T1 | — | Concluído |
| T2 | T1 | Concluído |
| T3 | T2 | Concluído |
| T4 | T3 | Concluído |

---

## 6. Arquivos / Áreas Impactadas (visão consolidada)

| Área | Arquivos | Ação |
|------|----------|------|
| `oneshot_server/lib/src/models/finance/` | `bank_transaction.spy.yaml` | criar |
| `oneshot_server/lib/src/models/finance/` | `ofx_preview_result.spy.yaml` | criar |
| `oneshot_server/lib/src/helpers/` | `ofx_parser_helper.dart` | criar |
| `oneshot_server/lib/src/core/repository/` | `bank_transaction_repository.dart` | criar |
| `oneshot_server/lib/src/services/` | `bank_transaction_service.dart` | criar |
| `oneshot_server/lib/src/endpoints/` | `bank_transaction_endpoint.dart` | criar |
| `oneshot_server/lib/src/core/injections/` | `injections.dart` | modificar |
| `apps/backoffice_web/lib/l10n/` | `app_pt.arb`, `app_en.arb` | modificar |
| `apps/backoffice_web/lib/src/domain/repositories/` | `bank_transaction_repository.dart` | criar |
| `apps/backoffice_web/lib/src/injections/` | `repositories_injections.dart` | modificar |
| `apps/backoffice_web/lib/src/injections/` | `viewmodel_injections.dart` | modificar |
| `apps/backoffice_web/lib/src/ui/pages/finance/bank_accounts/widgets/` | `bank_account_card.dart` | modificar |
| `apps/backoffice_web/lib/src/ui/pages/finance/bank_accounts/widgets/` | `import_ofx_dialog.dart` | criar |
| `apps/backoffice_web/lib/src/ui/pages/finance/reconciliation/` | `bank_reconciliation_page.dart` | criar |
| `apps/backoffice_web/lib/src/ui/pages/finance/reconciliation/` | `bank_reconciliation_viewmodel.dart` | criar |
| `apps/backoffice_web/lib/src/ui/pages/finance/reconciliation/widgets/` | `reconciliation_data_table.dart` | criar |
| `apps/backoffice_web/lib/src/ui/pages/finance/reconciliation/widgets/` | `reconciliation_data_table_row.dart` | criar |
| `apps/backoffice_web/lib/src/ui/pages/finance/reconciliation/widgets/` | `reconcile_match_dialog.dart` | criar |

---

## 7. Critérios de Conclusão Geral
- [ ] Todas as tasks T1, T2, T3 e T4 concluídas
- [ ] Código compila sem erros no backend e no frontend (`dart analyze` e `flutter analyze`)
- [ ] Modelos gerados com sucesso via `serverpod generate`
- [ ] Suíte de testes unitários e de integração passando
- [ ] Validação rigorosa de conta bloqueando OFX incompatível
- [ ] Idempotência garantida impedindo duplicação de transações por FITID
- [ ] Conciliação 1:1 funcionando e atualizando status em `financial_entries`

---

## 8. Notas para a LLM Executora
- Seguir estritamente a arquitetura Clean Architecture no Serverpod e MVVM com `ViewmodelState` no Backoffice Web.
- Nunca criar widgets como funções; usar classes `StatelessWidget` ou `StatefulWidget` em arquivos individuais na pasta `widgets/`.
- Utilizar `DSTokens` e `DSDropdown` para manter a identidade visual do Backoffice Web.

