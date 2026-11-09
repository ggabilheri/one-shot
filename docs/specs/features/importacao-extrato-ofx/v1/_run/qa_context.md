> Gerado em 2026-11-08 a partir de `intent.md` + `scope.md`. Se o `scope.md` for editado
> após esta data (ex.: via /agent-spec-challenge-spec), este arquivo está STALE — regenere-o
> ou consulte INTENT/SCOPE diretamente.

# Contexto de QA — Importação de Extrato Bancário OFX e Conciliação (v1)

## 1. Critérios de Aceite (do INTENT e SCOPE)
1. **Formato OFX Estrito**: Leitura e interpretação de arquivos `.ofx` suportando SGML e XML.
2. **Validação Sanitizada de Conta**: Normalização de zeros à esquerda e pontuações de agência e conta. Comparação com o `BankAccount` de destino. Se divergir, bloqueia a importação e emite mensagem clara de erro.
3. **Idempotência**: Nenhuma movimentação com o mesmo par `bankAccountId` + `fitId` pode ser duplicada em importações subsequentes.
4. **Resumo / Pré-visualização**: O operador visualiza totalizadores de débito, crédito e contagem de transações novas vs duplicadas antes de confirmar a gravação.
5. **Conciliação Não-Bloqueante**: O operador pode importar o extrato e realizar a conciliação com `financial_entries` de forma desacoplada.
6. **Vínculo 1:1 de Conciliação**: Uma transação bancária pode ser associada a um `FinancialEntry` marcando ambos como conciliados.

## 2. Decisões Arquiteturais e Padrões Herdados
- **Backend**: Serverpod com Clean Architecture (`models/` `.spy.yaml` -> `repository/` -> `services/` -> `endpoints/`).
- **Frontend**: Flutter com MVVM (`ViewmodelState` + `GetIt`), design system brutalista (`DSTokens`, `DSDropdown`), localização oficial `context.l10n`.
- **Regra de Componentização**: Apenas classes `StatelessWidget` ou `StatefulWidget`, sem funções que retornam widgets.

## 3. Componentes e Responsabilidades
- `OfxParserHelper`: Parser puro Dart para extração de tags SGML/XML e normalização de agência/conta.
- `BankTransaction` / `OfxPreviewResult`: Modelos Serverpod para transação e DTO de pré-visualização.
- `BankTransactionRepository` & `BankTransactionService`: Camada de persistência e validação de regras de negócio de banco.
- `BankTransactionEndpoint`: API RPC Serverpod expondo `previewOfx`, `importOfx`, `listTransactions`, `reconcile`.
- `ImportOfxDialog`: Modal Web para upload de `.ofx`, exibição de preview e bloqueio visual em caso de divergência.
- `BankReconciliationPage` & `BankReconciliationViewModel`: Tela e estado reativo de extrato e conciliação.
- `ReconciliationDataTable` & `ReconcileMatchDialog`: Tabela de transações e modal de correspondência de lançamentos.

