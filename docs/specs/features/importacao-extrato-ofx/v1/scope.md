# SCOPE -- MiniSpec (Web)

> **Variante**: web

## 1. O que está incluído
- [ ] Modelo de persistência para transações bancárias (`BankTransaction`) com rastreamento de `fitId`, data, valor, tipo e vínculo com lançamentos financeiros.
- [ ] DTO de resultado de pré-visualização (`OfxPreviewResult`) contendo dados do cabeçalho bancário, totalizadores de crédito/débito e contagem de itens novos vs duplicados.
- [ ] Parser utilitário de OFX (`OfxParserHelper`) tolerante a padrões SGML e XML para extração de cabeçalhos (`BANKID`, `BRANCHID`, `ACCTID`, `LEDGERBAL`) e transações (`STMTTRN`).
- [ ] Validador sanitizado de conta bancária comparando a agência/conta do OFX com o registro `BankAccount` cadastrado no sistema, prevenindo contaminação de dados.
- [ ] Métodos de Endpoint no Serverpod: `previewOfx`, `importOfx`, `listTransactions` e `reconcileTransaction`.
- [ ] Diálogo de upload e pré-visualização de OFX no Backoffice Web (`ImportOfxDialog`) com feedback imediato de validação de conta.
- [ ] Interface de consulta de movimentações e conciliação bancária vinculando movimentações com `financial_entries`.
- [ ] Repositório e ViewModel dedicados no front-end (`BankTransactionRepository`, `BankTransactionsViewModel`).

---

## 2. O que está fora do escopo
- [ ] Integração automática via Open Finance / APIs bancárias em tempo real (Open Banking).
- [ ] Leitura de extratos em PDF, CSV ou planilhas Excel (restrito exclusivamente a `.ofx`).
- [ ] Conciliação retroativa automática baseada em Machine Learning ou IA.
- [ ] Desdobramento de uma transação bancária em múltiplos lançamentos financeiros fracionados (relação 1:1 nesta v1).

---

## 3. Definições Técnicas

### 3.1 Visão em Árvore

```
oneshot_server/
├── lib/src/
│   ├── helpers/
│   │   └── [N] ofx_parser_helper.dart
│   ├── models/
│   │   └── finance/
│   │       ├── [N] bank_transaction.spy.yaml
│   │       └── [N] ofx_preview_result.spy.yaml
│   ├── repository/
│   │   └── [N] bank_transaction_repository.dart
│   ├── services/
│   │   └── [N] bank_transaction_service.dart
│   └── endpoints/
│       └── [N] bank_transaction_endpoint.dart
apps/backoffice_web/
├── lib/
│   ├── l10n/
│   │   ├── [M] app_pt.arb
│   │   └── [M] app_en.arb
│   └── src/
│       ├── domain/
│       │   └── repositories/
│       │       └── [N] bank_transaction_repository.dart
│       ├── injections/
│       │   ├── [M] repositories_injections.dart
│       │   └── [M] viewmodel_injections.dart
│       └── ui/pages/finance/
│           ├── bank_accounts/
│           │   └── widgets/
│           │       ├── [M] bank_account_card.dart
│           │       └── [N] import_ofx_dialog.dart
│           └── reconciliation/
│               ├── [N] bank_reconciliation_page.dart
│               ├── [N] bank_reconciliation_viewmodel.dart
│               └── widgets/
│                   ├── [N] reconciliation_data_table.dart
│                   ├── [N] reconciliation_data_table_row.dart
│                   └── [N] reconcile_match_dialog.dart
```

Legenda: `[N]` Novo &nbsp; `[M]` Modificado &nbsp; `[R]` Referência

### 3.2 Arquivos Envolvidos

| Arquivo | Ação | Descrição |
|---------|------|-----------|
| `oneshot_server/lib/src/models/finance/bank_transaction.spy.yaml` | criar | Modelo de transações bancárias com `fitId`, data, valor, flags de conciliação e índices |
| `oneshot_server/lib/src/models/finance/ofx_preview_result.spy.yaml` | criar | DTO com dados de validação de conta, resumo de valores e lista prévia de transações |
| `oneshot_server/lib/src/helpers/ofx_parser_helper.dart` | criar | Parser puro de arquivo OFX e normalizador de agência/conta para comparação sanitizada |
| `oneshot_server/lib/src/core/repository/bank_transaction_repository.dart` | criar | Interface e implementação de persistência de transações bancárias e conciliação |
| `oneshot_server/lib/src/services/bank_transaction_service.dart` | criar | Serviço de regras de negócio: validação de pertinência de conta e idempotência por `fitId` |
| `oneshot_server/lib/src/endpoints/bank_transaction_endpoint.dart` | criar | Endpoint RPC do Serverpod expondo preview, importação, listagem e conciliação |
| `apps/backoffice_web/lib/l10n/app_pt.arb` | modificar | Chaves de tradução em português para mensagens de OFX, conciliação e validação |
| `apps/backoffice_web/lib/l10n/app_en.arb` | modificar | Chaves de tradução em inglês para mensagens de OFX e conciliação |
| `apps/backoffice_web/lib/src/domain/repositories/bank_transaction_repository.dart` | criar | Interface e implementação do repositório no frontend consumindo o client Serverpod |
| `apps/backoffice_web/lib/src/injections/repositories_injections.dart` | modificar | Registro de `IBankTransactionRepository` no GetIt |
| `apps/backoffice_web/lib/src/injections/viewmodel_injections.dart` | modificar | Registro de `IBankReconciliationViewModel` no GetIt |
| `apps/backoffice_web/lib/src/ui/pages/finance/bank_accounts/widgets/bank_account_card.dart` | modificar | Adição de botões para abrir importação de OFX e consultar conciliação da conta |
| `apps/backoffice_web/lib/src/ui/pages/finance/bank_accounts/widgets/import_ofx_dialog.dart` | criar | Diálogo de seleção de arquivo, preview e validação da agência/conta |
| `apps/backoffice_web/lib/src/ui/pages/finance/reconciliation/bank_reconciliation_page.dart` | criar | Página de extrato e conciliação de movimentações com lançamentos financeiros |
| `apps/backoffice_web/lib/src/ui/pages/finance/reconciliation/bank_reconciliation_viewmodel.dart` | criar | ViewModel reativo do extrato bancário e fluxo de conciliação |
| `apps/backoffice_web/lib/src/ui/pages/finance/reconciliation/widgets/reconciliation_data_table.dart` | criar | Tabela de movimentações bancárias com status e ações |
| `apps/backoffice_web/lib/src/ui/pages/finance/reconciliation/widgets/reconciliation_data_table_row.dart` | criar | Linha com badge de conciliação e botão de ação rápida |
| `apps/backoffice_web/lib/src/ui/pages/finance/reconciliation/widgets/reconcile_match_dialog.dart` | criar | Diálogo para vincular transação bancária à despesa/receita correspondente |

### 3.3 Páginas / Componentes

- **Design de referência**: —

| Página / Componente | Rota | Tipo (page/container/presentational) | Descrição |
|---------------------|------|--------------------------------------|-----------|
| `ImportOfxDialog` | Modal | container | Modal acionado no card da conta bancária; executa upload e exibe o preview com validação sanitizada de conta |
| `BankReconciliationPage` | `/finance/bank-accounts/:id/reconciliation` | page | Tela com extrato das transações importadas, filtros de status (Todas, Pendentes, Conciliadas) e saldo |
| `ReconciliationDataTable` | Componente | presentational | Tabela estruturada com `DSTokens` listando transações bancárias |
| `ReconcileMatchDialog` | Modal | container | Modal que sugere lançamentos pendentes de mesmo valor e data aproximada para baixa com 1 clique |

### 3.4 Estado / Store

| Store / Slice | Solução (Redux/Zustand/Context/Signals) | Estado Gerenciado | Persistência |
|---------------|-----------------------------------------|-------------------|--------------|
| `BankReconciliationViewModel` | MVVM (`ViewmodelState` + `GetIt`) | Lista de transações da conta, filtros de conciliação, estado de loading e mensagens de erro | Em memória (reativo) |

### 3.5 Integração com APIs (consumo)

| Método RPC (Serverpod) | Parâmetros | Descrição | Auth |
|------------------------|------------|-----------|------|
| `bankTransaction.previewOfx` | `UuidValue bankAccountId`, `String ofxContent` | Valida agência/conta e retorna totalizadores sem persistir | Requer autenticação |
| `bankTransaction.importOfx` | `UuidValue bankAccountId`, `String ofxContent` | Persiste transações ignorando `fitId` duplicados | Requer autenticação |
| `bankTransaction.listTransactions` | `UuidValue bankAccountId`, `bool? isReconciled` | Lista movimentações da conta com paginação e status | Requer autenticação |
| `bankTransaction.reconcile` | `UuidValue transactionId`, `UuidValue financialEntryId` | Vincula movimentação bancária à entrada financeira | Requer autenticação |

### 3.6 i18n / a11y (resumo)

- **Idiomas**: `pt` (padrão) e `en`.
- **Solução i18n**: Mecanismo oficial Flutter `l10n` (`AppLocalizations` via `context.l10n`).
- **Padrão a11y**: WCAG 2.1 AA com foco navegável por teclado em diálogos e contraste estrito baseado em `DSTokens`.
- **Considerações**: Mensagens descritivas em caso de bloqueio por divergência de conta (ex.: *"O arquivo OFX pertence à Agência 0001 / Conta 12345, divergente da Conta selecionada"*).

### 3.7 Feature Flags

| Flag | Propósito | Default |
|------|-----------|---------|
| N/A | Funcionalidade padrão nativa do módulo financeiro | N/A |

### 3.8 Dependências de Pacotes

| Pacote | Versão | Motivo |
|--------|--------|--------|
| N/A | — | O parser de OFX será implementado como helper interno Dart no backend, sem dependências externas adicionais |

---

## 4. Critérios de Aceite (técnicos)
- [ ] O parser `OfxParserHelper` deve interpretar corretamente arquivos OFX nos formatos SGML e XML.
- [ ] A validação de pertinência da conta deve normalizar zeros à esquerda e caracteres especiais de agência/conta para comparar com o `BankAccount` de destino.
- [ ] Se o arquivo OFX contiver agência/conta diferente da conta selecionada, a importação deve ser bloqueada retornando erro descritivo.
- [ ] A importação não pode duplicar movimentações já existentes (unicidade garantida pelo par `bankAccountId` + `fitId`).
- [ ] O operador deve poder visualizar o resumo prévio da importação (créditos, débitos, transações novas) antes da gravação final.
- [ ] A conciliação deve permitir associar uma transação bancária a um lançamento financeiro (`FinancialEntry`), marcando ambos como conciliados/baixados.
- [ ] Todas as novas classes visuais devem ser implementadas como `StatelessWidget` ou `StatefulWidget`, sem funções que retornam widgets.

---

## 5. Observações

### ADRs Aplicáveis nesta Feature
- **ADR-0001 (Arquitetura Backend Serverpod):** Aplicável. Repositórios em `lib/src/repository/`, regras e validações no `lib/src/services/` e exposição via `lib/src/endpoints/`.
- **ADR-0002 (Padrão MVVM com ViewmodelState e GetIt no Flutter):** Aplicável. Telas estendendo `ViewmodelState` e injeção via `GetIt`.
- **ADR-0004 (Monorepo Full-Stack RPC Serverpod Client):** Aplicável. Modelos declarados em `.spy.yaml` com geração automática para o cliente `oneshot_client`.
- **ADR-0006 (Componentização Estrita UI):** Aplicável. Todo widget em classe dedicada em arquivo individual dentro de `widgets/`.

### Candidatos a ADR
- **0/5 passam**: A solução adotada apenas instancia e aplica as convenções arquiteturais já estabelecidas pelas ADRs existentes do projeto, não havendo decisão transversal inédita.

