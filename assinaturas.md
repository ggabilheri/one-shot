**Título da Tarefa:** Criar Entidade e Endpoints para Planos de Assinatura (Subscription Plans)

**Descrição:**
Desenvolver a estrutura de dados e a camada de backend (Endpoints e Repositórios) para gerenciar os Planos de Assinatura da plataforma "App One-shot". Conforme as regras de negócio, a plataforma atenderá assinaturas de Clubes, Armeiros e CACs. O sistema deve permitir o cadastro detalhado de valores (unitário, quantidade e total), além do controle de periodicidade e status de ativação.

A implementação deve seguir os padrões arquiteturais do projeto: **Serverpod** com modelagem em `.spy.yaml`, chaves primárias em UUID e os princípios de **Clean Architecture** (Interface e Implementação do repositório no mesmo arquivo).

---

### 🛠 Especificação Técnica (Modelagem Serverpod)

**Arquivo a ser criado:** `subscription_plan.spy.yaml`

**Campos Mapeados:**
*   **id:** `UuidValue` (Chave primária)
*   **name:** `String` (Nome do plano, ex: "Plano Ouro CAC", "Plano Clube Pro")
*   **planType:** `String` (Tipo do plano: `CLUB`, `GUNSMITH` ou `CAC`)
*   **unitValue:** `double` (Valor unitário)
*   **quantity:** `int` (Quantidade)
*   **totalValue:** `double` (Valor total calculado)
*   **periodicity:** `String` (Periodicidade, ex: `MONTHLY`, `QUARTERLY`, `ANNUALLY`)
*   **status:** `String` (Status do plano: `ACTIVE`, `INACTIVE`, `PAUSED`, `CANCELED`)

**Sugestão de YAML:**
```yaml
class: SubscriptionPlan
table: subscription_plans
fields:
  id: UuidValue
  name: String
  planType: String
  unitValue: double
  quantity: int
  totalValue: double
  periodicity: String
  status: String
indexes:
  plan_type_idx:
    fields: planType
  plan_status_idx:
    fields: status
```

---

### ✅ Critérios de Aceite (DoD - Definition of Done)

- [ ] **1. Modelagem YAML:** Arquivo `subscription_plan.spy.yaml` criado rigorosamente com as propriedades solicitadas em inglês.
- [ ] **2. Geração de Código:** Executar o comando `serverpod generate` para construir os Models no Dart.
- [ ] **3. Camada de Dados (Repository):** Criar o arquivo `subscription_plan_repository.dart` contendo a interface (`abstract class`) e a implementação para o acesso ao banco de dados no mesmo arquivo.
- [ ] **4. Endpoints (CRUD):** Criar a classe `SubscriptionPlanEndpoint` estendendo `Endpoint` no Serverpod, injetando o repositório e implementando os métodos:
  - `createPlan`
  - `readPlan` (por ID)
  - `updatePlan`
  - `deletePlan`
  - `listPlans` (com suporte a paginação e **filtros opcionais por `planType` e `status`**, permitindo listar, por exemplo, apenas os "Planos Ativos para CACs").
- [ ] **5. Validação de Negócio:** Garantir que, ao criar ou atualizar via Endpoint, o campo `totalValue` seja correspondente ou validado através da regra `unitValue * quantity` (se aplicável).