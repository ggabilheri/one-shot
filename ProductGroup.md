Aqui está a estruturação do Task Card para a criação da entidade de Grupo de Produtos e a alteração da entidade Produto, seguindo as diretrizes de arquitetura definidas (Serverpod, Clean Architecture, relacionamentos implícitos e chaves UUID).

Baseado na documentação do aplicativo "One-shot", esses grupos permitirão organizar melhor estoques como "Munições", "Insumos de Recarga", "Acessórios" ou "Serviços de Despachante", dependendo se a origem for o Clube, o Armeiro, o CAC ou o Backoffice

***

**Título da Tarefa:** Criar Entidade "Grupo de Produtos" e Vincular à Entidade "Produto"

**Descrição:**
Criar a entidade `ProductGroup` para categorizar os produtos/serviços do sistema. Como a plataforma atende a múltiplos perfis (Clubes e Armeiros), os grupos criados devem pertencer exclusivamente ao Clube ou ao Armeiro que os cadastrou. Em seguida, a entidade `Product` (criada anteriormente) deve ser atualizada para conter um relacionamento opcional com esse novo grupo.

---

### 🛠 Especificação Técnica (Modelagem Serverpod)

**1. Novo Arquivo:** `product_group.spy.yaml`
```yaml
class: ProductGroup
table: product_groups
fields:
  id: UuidValue
  name: String
  description: String?
  originModule: String      # BACKOFFICE, CLUB ou GUNSMITH
  ownerId: UuidValue?       # FK para o Usuário (Admin do Clube ou Armeiro)
  owner: User?, relation    # Relacionamento opcional com o dono do grupo
indexes:
  product_group_origin_idx:
    fields: originModule
  product_group_owner_idx:
    fields: ownerId
```

**2. Arquivo Modificado:** `product.spy.yaml`
Adicionar os campos de relacionamento no final do arquivo existente:
```yaml
class: Product
table: products
fields:
  id: UuidValue
  code: String
  description: String
  unit: String
  unitPrice: double
  originModule: String
  groupId: UuidValue?                # Nova FK gerada pelo Serverpod
  group: ProductGroup?, relation     # Relacionamento explícito com o Grupo
indexes:
  product_code_idx:
    fields: code
    unique: true
  product_origin_idx:
    fields: originModule
  product_group_idx:                 # Novo índice para otimizar buscas por categoria
    fields: groupId
```

---

### ✅ Critérios de Aceite (DoD - Definition of Done)

- [ ] **1. Modelagem YAML:** Arquivo `product_group.spy.yaml` criado e `product.spy.yaml` atualizado contendo o relacionamento implícito padrão do Serverpod (`relation`).
- [ ] **2. Geração de Código:** Comando `serverpod generate` executado, garantindo que as classes Dart reflitam a nova propriedade `group` dentro de `Product` e a classe `ProductGroup` seja criada.
- [ ] **3. Repositório (Product Group):** Criar o arquivo `product_group_repository.dart` contendo a `abstract class` (Interface) e sua respectiva implementação (ex: `ProductGroupRepositoryImpl`) no mesmo arquivo.
- [ ] **4. Endpoints (Product Group):** Criar o `ProductGroupEndpoint` contendo os métodos CRUD e um método `listGroups` que obedeça aos seguintes filtros obrigatórios:
  - Filtrar por `originModule` (para não misturar grupos do Clube com os do Armeiro, CAC ou Backoffice).
  - Filtrar por `ownerId` (garantindo que o Clube A veja apenas os seus grupos e não os do Clube B, CAC ou Backoffice).
- [ ] **5. Atualização do ProductEndpoint:** Modificar os métodos de criação e listagem do `ProductEndpoint` e `ProductRepository` para suportarem a gravação e a leitura do campo `groupId`.