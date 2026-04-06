**Título da Tarefa:** Implementar UI de Cadastro e Listagem de Planos de Assinatura

**Descrição:**
Desenvolver a interface de usuário (UI) no front-end em Flutter (focado no Backoffice e na interface Web do Clube) para o gerenciamento de Planos de Assinatura. Esta tela permitirá aos administradores criar, editar, visualizar e excluir planos oferecidos aos usuários da plataforma (Clubes, Armeiros e CACs). 

A implementação deve seguir os padrões do projeto: **Flutter Web**, arquitetura **MVVM** (Model-View-ViewModel) associada à **Clean Architecture** e o uso do client nativo gerado pelo **Serverpod** para o consumo da API.

---

### 🎨 Diretrizes de UI/UX (Design System)
*   **Menu Lateral (Sidebar):** Adicionar a aba "Assinaturas" ou "Planos" no menu lateral.
*   **Estilo Visual:** Manter o Dark Mode padrão do sistema tático/industrial.
*   **Componentes Chave:**
    *   **Data Table:** Tabela principal para listar os planos cadastrados, com paginação.
    *   **Badges/Tags para Status:** Utilizar cores para o campo Status (ex: Verde para `ATIVO`, Cinza para `INATIVO`, Laranja para `PAUSADO`, Vermelho para `CANCELADO`).
    *   **Badges/Tags para Tipo:** Diferenciar visualmente o público-alvo (Clube, Armeiro, CAC).
    *   **Formulário (Modal/Side-sheet):** O formulário de criação/edição deve ser sobreposto à tela atual para não perder o contexto da listagem.

---

### 🛠 Especificação Técnica (Flutter & MVVM)

**Camada View (UI):**
*   **SubscriptionPlanListView:** Tela contendo a tabela de planos e filtros no topo. 
    *   *Filtros obrigatórios:* Dropdown para filtrar por `Tipo de Plano` (planType) e `Status`.
*   **SubscriptionPlanFormDialog:** Modal de formulário contendo:
    *   `Nome do Plano` (Text input)
    *   `Tipo do Plano` (Dropdown: Clube, Armeiro, CAC)
    *   `Periodicidade` (Dropdown: Mensal, Trimestral, Semestral, Anual)
    *   `Valor Unitário` (Number input com máscara monetária)
    *   `Quantidade` (Number input, padrão = 1)
    *   `Limite de Uso` (Number input, padrão = 1).
    *   `Status` (Dropdown: Ativo, Inativo, Pausado, Cancelado)

**Camada ViewModel (Gerência de Estado):**
*   **SubscriptionPlanViewModel:** 
    *   Responsável pelo estado da view (Loading, Loaded, Error).
    *   Implementar métodos: `loadPlans()`, `savePlan()`, `deletePlan()`.

**Integração (Client Serverpod):**
*   A ViewModel deve acionar o Repositório, que fará as chamadas ao client gerado pelo Serverpod: `client.subscriptionPlan.listPlans()`, `client.subscriptionPlan.createPlan()`, etc.

---

### ✅ Critérios de Aceite (DoD - Definition of Done)

- [ ] **1. Estrutura MVVM:** Arquivos de UI (`SubscriptionPlanListView`, `SubscriptionPlanFormDialog`) e gerência de estado (`SubscriptionPlanViewModel`) criados em suas respectivas pastas.
- [ ] **2. Listagem de Planos:** Tabela renderizando os dados vindos da base de dados através do endpoint de listagem do Serverpod.
- [ ] **3. Filtros Funcionais:** Os seletores de filtro por `Tipo de Plano` e `Status` devem atualizar a lista corretamente ao serem alterados.
- [ ] **4. Regra de Negócio (Valor Total):** No formulário, o campo `Valor Total` deve ser preenchido e atualizado automaticamente na tela com base no cálculo `Valor Unitário * Quantidade`.
- [ ] **5. CRUD Completo:** Deve ser possível Criar, Ler, Editar e Excluir logicamente um plano. A exclusão deve exigir uma confirmação prévia (ex: `AlertDialog`).
- [ ] **6. Tratamento de Erros:** Exibir mensagens via `SnackBar` para erros de requisição ou caso o usuário tente salvar um plano sem preencher os campos obrigatórios.