Atue como engeniro de software e implemente:

**Título da Tarefa:** Implementação de Repositórios e Endpoints do Financeiro

**Descrição:**
Implementar as regras de negócio e o acesso a dados do sistema financeiro (Contas a Pagar/Receber e Bancos) no backend em Serverpod. Como a modelagem de dados e as migrações do PostgreSQL já foram realizadas, esta tarefa foca exclusivamente na construção das camadas de **Repositório** e **Endpoints** (Controllers) seguindo o padrão de **Clean Architecture** do projeto.

---

### 🏗 Arquitetura e Regras de Negócio (Clean Architecture)

**1. Camada de Repositórios (`/repositories`):**
*   **Contas Bancárias:** Criar o arquivo `bank_account_repository.dart` contendo a interface (`abstract class BankAccountRepository`) e sua respectiva implementação (`BankAccountRepositoryImpl`) no mesmo arquivo. Deve gerenciar as operações de banco de dados para a entidade `BankAccount`.
*   **Lançamentos (A Pagar/Receber):** Criar o arquivo `financial_entry_repository.dart` com a mesma estrutura (interface e implementação juntas) para a entidade `FinancialEntry`. 
*   **Regra de Listagem:** O repositório de lançamentos deve incluir um método `list` capaz de filtrar registros baseados em múltiplos parâmetros dinâmicos (ex: listar apenas `PAYABLE` do `BACKOFFICE` ou `RECEIVABLE` de um `CLUB`).

**2. Camada de Endpoints (`/endpoints`):**
*   **`BankAccountEndpoint`:** Criar o controlador estendendo a classe base do Serverpod e instanciar/injetar o `BankAccountRepository`. Implementar os métodos de negócio `createAccount`, `readAccount`, `updateAccount`, `deleteAccount` e `listAccounts` (filtrando obrigatoriamente pelo parâmetro `originModule`).
*   **`FinancialEntryEndpoint`:** Criar o controlador instanciando o `FinancialEntryRepository`. Implementar os métodos CRUD completos. O método de listagem `listEntries` deve aceitar como filtros opcionais o `type` (A Pagar ou A Receber) e o `status` (PENDING, PAID, etc.), além do filtro obrigatório `originModule`. 

---

### ✅ Critérios de Aceite (DoD - Definition of Done)

- [ ] **1. Repositórios Criados:** Classes de repositório (`BankAccountRepository` e `FinancialEntryRepository`) implementadas respeitando a Clean Architecture em arquivos únicos (Interface + Impl) utilizando as classes de ORM geradas previamente.
- [ ] **2. Endpoints Funcionais:** Controladores de endpoint (`BankAccountEndpoint` e `FinancialEntryEndpoint`) criados e expondo corretamente as assinaturas dos métodos requeridos para o Front-end.
- [ ] **3. Teste de Filtragem (Regra de Negócio):** Garantir na implementação que o endpoint de `FinancialEntry` permite listar e isolar as "Contas a Pagar" (`type: PAYABLE`) das "Contas a Receber" (`type: RECEIVABLE`), aplicando a restrição correta dos perfis através do campo `originModule`.
- [ ] **4. Vínculos e Dependências:** Os métodos de `read` ou `list` de `FinancialEntry` devem retornar as informações da `BankAccount` vinculada utilizando a funcionalidade de `include` do Serverpod (visto que o relacionamento foi modelado explicitamente).