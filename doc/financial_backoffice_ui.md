**Título da Tarefa:** Implementar UI do Módulo Financeiro (Backoffice)

**Descrição:**
Desenvolver a interface de usuário (UI) no front-end em Flutter para o **Backoffice** (Administração da Plataforma), englobando o gerenciamento de Contas Bancárias, Contas a Pagar e Contas a Receber. A navegação deve ser incluída no menu lateral e as operações de CRUD (Criar, Ler, Atualizar, Excluir) devem ocorrer através de modais/dialogs sobrepostos às telas de listagem.

A implementação deve seguir os padrões do projeto: **Flutter Web**, **MVVM** (Model-View-ViewModel), **Clean Architecture** e consumo da API nativa via client do **Serverpod**.

---

### 🎨 Diretrizes de UI/UX e Navegação

**1. Menu Lateral (Sidebar):**
*   Adicionar a opção principal **"Financeiro"**.
*   Criar um sub-menu expansível contendo três opções:
    1.  **Contas Bancárias**
    2.  **A Pagar**
    3.  **A Receber**

**2. Regras de Negócio de Exibição:**
*   **Contas Bancárias:** Pertencem *estrita e exclusivamente* à plataforma (Backoffice). Ocultar qualquer campo ou filtro de "Clube", "Armeiro" ou "CAC" nesta tela, fixando o envio do `originModule` como `BACKOFFICE` sob o capô.
*   **A Pagar / A Receber:** Representam o fluxo de caixa da plataforma, originados principalmente das mensalidades dos planos pagos por Clubes, Armeiros ou CACs. Utilizar a entidade `FinancialEntry`.
    *   A tela **"A Pagar"** deve fixar a busca pelo `type: 'PAYABLE'`.
    *   A tela **"A Receber"** deve fixar a busca pelo `type: 'RECEIVABLE'`.

---

### 🛠 Especificação Técnica (Views e ViewModels)

**Camada View (Telas de Listagem):**
*   **BankAccountListView:** Tabela exibindo as contas da plataforma (Nome, Banco, Agência, Conta, Saldo e Status).
*   **PayableListView / ReceivableListView:** Tabelas exibindo os lançamentos (Descrição, Valor, Vencimento, Data de Pagamento e Status). Deve haver filtros no topo (ex: filtrar por Status: Pendente, Pago, Vencido).

**Camada View (Dialogs de CRUD):**
*   **BankAccountFormDialog:** Modal para cadastrar/editar Conta Bancária.
    *   *Campos:* Nome da Conta, Banco, Agência (e dígito), Conta (e dígito), Saldo Inicial e Status (Ativo/Inativo).
*   **FinancialEntryFormDialog:** Modal único (reaproveitado para Pagar e Receber, mudando apenas o contexto visual).
    *   *Campos:* Descrição (ex: "Mensalidade Clube X"), Valor, Data de Vencimento, Data de Pagamento (opcional), Status, e um Dropdown para vincular a uma Conta Bancária (`bankAccount`) onde o dinheiro vai entrar/sair.

**Camada ViewModel (Gerência de Estado):**
*   **BankAccountViewModel:** Métodos `loadAccounts()`, `saveAccount()`, `deleteAccount()`.
*   **FinancialEntryViewModel:** Métodos `loadEntries(String type)` (passando PAYABLE ou RECEIVABLE), `saveEntry()`, `deleteEntry()`, `markAsPaid()`.

---

### ✅ Critérios de Aceite (DoD - Definition of Done)

- [ ] **1. Navegação:** Menu lateral atualizado com a seção "Financeiro" e seus 3 sub-menus roteando para as telas corretas.
- [ ] **2. Listagens (DataTables):** As três telas principais (`BankAccountListView`, `PayableListView`, `ReceivableListView`) carregam os dados via Serverpod, exibindo as tabelas com paginação.
- [ ] **3. Separação Lógica:** Garantir que a tela "A Pagar" liste apenas `PAYABLE` e a "A Receber" liste apenas `RECEIVABLE`.
- [ ] **4. CRUD Contas Bancárias:** É possível adicionar, editar e excluir as contas exclusivas da plataforma abrindo o `BankAccountFormDialog`.
- [ ] **5. CRUD A Pagar/Receber:** É possível criar, editar, excluir e visualizar os detalhes financeiros provenientes das assinaturas da plataforma abrindo o `FinancialEntryFormDialog`.
- [ ] **6. Status e Cores:** Utilizar extensões (i18n) para traduzir e colorir as tags de status nas tabelas (ex: Verde para `PAID`, Vermelho para `OVERDUE`, Laranja para `PENDING`).
- [ ] **7. Arquitetura mantida:** A lógica de estado reside totalmente na camada ViewModel, sem chamadas diretas ao Serverpod Client dentro dos arquivos de View.