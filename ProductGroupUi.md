**Título da Tarefa:** Implementar UI de Estoque (Grupos e Produtos) com Nested CRUD e Filtros

**Descrição:**
Desenvolver a interface de usuário no front-end em Flutter para o gerenciamento hierárquico de Estoque. A tarefa consiste em criar a navegação no menu lateral, implementar o CRUD de **Grupos de Produtos** e vincular o CRUD de **Produtos** dentro da visão de grupos. Além disso, a listagem e o cadastro de produtos devem conter a funcionalidade de filtro por grupo, facilitando a usabilidade para administradores do Backoffice, Clubes e Armeiros.

A implementação deve seguir os padrões do projeto: **Clean Architecture**, **MVVM**, e comunicação via client gerado pelo **Serverpod**.

---

### 🎨 Diretrizes de UI/UX e Navegação
*   **Menu Lateral (Sidebar):** 
    *   Criar/Atualizar a seção principal chamada **"Estoque"**.
    *   Adicionar um sub-menu expansível contendo a opção **"Grupo e Produto"**.
*   **Fluxo de Tela (Master-Detail):** 
    *   A tela principal de "Grupo e Produto" deve exibir primeiro a lista de Grupos (ex: Munições, Peças, Acessórios). 
    *   Ao clicar em um Grupo, a interface deve expandir ou navegar para exibir os Produtos que pertencem **dentro daquele grupo**.
*   **Filtro no Cadastro/Listagem:** 
    *   Na visão geral de Produtos, adicionar um `DropdownButton` ou `SegmentedControl` no topo da tabela para permitir filtrar os itens por Grupo.
    *   No formulário de Cadastro/Edição de Produto, o campo "Grupo" deve ser obrigatório e de fácil seleção.

---

### 🛠 Especificação Técnica (Flutter & MVVM)

**Camada View (UI):**
*   **SidebarMenu:** Atualizar o widget de navegação lateral para incluir `Estoque -> Grupo e Produto`.
*   **GroupProductView:** Tela híbrida ou dividida. Pode ser uma exibição em formato de *Tree View* (Árvore) ou duas listas lado a lado (Esquerda: Grupos / Direita: Produtos do Grupo selecionado).
*   **GroupFormDialog:** Modal rápido para criar/editar um Grupo de Produtos (contendo apenas Nome e Descrição).
*   **ProductFormDialog (Atualização):** Atualizar o formulário já criado para incluir o campo de seleção de `ProductGroup`.

**Camada ViewModel (Gerência de Estado):**
*   **GroupProductViewModel:** 
    *   Método `loadGroups()`: Traz a lista de grupos.
    *   Método `loadProductsByGroup(String groupId)`: Acionado sempre que o usuário selecionar um grupo no filtro ou na lista mestre.
    *   Gerenciar o estado do "Grupo Selecionado" para que, ao clicar em "Novo Produto", o ID do grupo já venha preenchido automaticamente no formulário.

**Integração (Client Serverpod):**
*   Consumir os métodos `client.productGroup.listGroups(...)` e `client.product.listProducts(groupId: selectedId)`.

---

### ✅ Critérios de Aceite (DoD - Definition of Done)

- [ ] **1. Navegação:** O menu lateral possui a aba "Estoque" com o sub-menu "Grupo e Produto" funcionando e roteando corretamente.
- [ ] **2. CRUD de Grupos:** É possível Criar, Ler, Editar e Excluir um "Grupo de Produto" na interface.
- [ ] **3. CRUD Aninhado (Nested):** A tela permite visualizar e gerenciar os Produtos *diretamente por dentro* do seu respectivo Grupo.
- [ ] **4. Filtro de Grupo:** A tela de Produtos possui um filtro de Dropdown. Ao mudar o grupo no filtro, a tabela recarrega trazendo apenas os produtos daquele grupo específico.
- [ ] **5. Formulário Vinculado:** Ao cadastrar um novo produto, há um campo para selecionar o "Grupo". Se a criação for acionada de dentro da tela de um grupo específico, esse campo já deve vir pré-selecionado.
- [ ] **6. Arquitetura:** Código de UI e Regras de Estado separados fisicamente (`/views` e `/viewmodels`), sem chamadas diretas ao Serverpod nas views.