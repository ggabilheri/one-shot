**Título da Tarefa:** Criar Estrutura de Dados da Entidade Produto (Product)

**Descrição:**
Criar a modelagem de banco de dados, repositórios e endpoints para a entidade genérica de **Produtos** (`Product`). Esta entidade centralizará os itens comercializáveis e controlados pelo sistema (como peças, munições e insumos), podendo ser originados e geridos por três frentes distintas da plataforma: Backoffice, Clube de Tiro ou Armeiro.

A implementação deve seguir o padrão arquitetural já estabelecido do projeto: framework Serverpod no backend, banco de dados PostgreSQL, chaves primárias em UUID e arquitetura Clean Architecture (com interface e implementação do repositório no mesmo arquivo).

---

### 🛠 Especificação Técnica (Modelagem Serverpod)

**Arquivo a ser criado:** `product.spy.yaml`

**Campos Mapeados:**
*   **id:** `UuidValue` (Chave primária padrão gerada pelo Serverpod).
*   **code:** `String` (Código de identificação único do produto/SKU).
*   **description:** `String` (Descrição completa do produto, ex: "Pólvora CBC 219", "Munição 9mm NTA").
*   **unit:** `String` (Unidade de medida, ex: UN, KG, GRAINS, CAIXA).
*   **unitPrice:** `double` (Preço unitário padrão do produto).
*   **originModule:** `String` (Origem de controle do produto: `BACKOFFICE`, `CLUB` ou `GUNSMITH`).

**Índices recomendados (`indexes`):**
*   Índice no campo `code` (unique) para buscas rápidas por código de barras/SKU.
*   Índice no campo `originModule` para facilitar a filtragem nos painéis específicos de cada front-end.

---

### ✅ Critérios de Aceite (DoD - Definition of Done)

- [ ] **1. Modelagem YAML:** Arquivo `product.spy.yaml` criado com todos os campos listados acima em inglês e tipagem correta.
- [ ] **2. Geração de Código:** Comando `serverpod generate` executado com sucesso para gerar a classe `Product` nativa do Dart.
- [ ] **3. Repositório (Clean Architecture):** Arquivo `product_repository.dart` criado contendo a `abstract class` (Interface) e a sua respectiva `class ...Impl` no mesmo arquivo.
- [ ] **4. Endpoints (Controllers):** Arquivo `ProductEndpoint` criado estendendo `Endpoint` do Serverpod, implementando obrigatoriamente os métodos:
  - `createProduct`
  - `readProduct` (por ID)
  - `updateProduct`
  - `deleteProduct`
  - `listProducts` (com suporte a paginação e **filtro obrigatório pelo parâmetro `originModule`**, garantindo que o Clube não veja o estoque do Armeiro e vice-versa).