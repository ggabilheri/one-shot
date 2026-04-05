> **Aja como um Arquiteto de Software Sênior e Especialista em Serverpod.**
> 
> Preciso que você implemente o **Módulo Financeiro e de Faturamento (Billing)** do sistema "App One-shot". Este módulo será o núcleo financeiro compartilhado utilizado pelo Backoffice (contas a pagar/receber globais), Clubes de Tiro (assinaturas e serviços) e Armeiros (ordens de serviço). 
> 
> O sistema utiliza Dart com o framework Serverpod no backend e deve seguir os princípios de Clean Architecture. Dividiremos sua entrega em três passos.
> 
> ### Regras Gerais de Modelagem e Arquitetura:
> 1. **Nomenclatura em Inglês:** Todas as classes, campos, endpoints e relações devem estar em inglês (PascalCase para classes, camelCase para atributos).
> 2. **Chaves Primárias em UUID:** Adicione o campo de ID gerado como `UuidValue`.
> 3. **Chaves Estrangeiras Implícitas:** O Serverpod gerencia foreign keys através do relacionamento. Use apenas a referência do objeto (ex: `invoice: Invoice?, relation`). Não crie os campos `Id` manualmente.
> 4. **Índices (Indexes):** Adicione blocos de índices nos `.spy.yaml` para melhorar a performance em consultas, especialmente para datas de vencimento, status e origem.
> 5. **Repositórios Num Só Arquivo:** Na implementação da Clean Architecture, você deve criar as interfaces (`abstract class`) e as implementações juntas no mesmo arquivo `.dart`.
> 
> ### Entidades do Módulo de Faturamento (Requisitos de Negócio):
> 
> **1. Entidade Fatura (Invoice)**
> O documento principal de cobrança ou despesa. Pode ser de entrada (despesas do clube/armeiro/plataforma) ou saída (receitas/cobranças feitas aos CACs).
> *   **Campos:** 
>     *   `originModule` (String): Origem da fatura (BACKOFFICE, CLUB, GUNSMITH).
>     *   `direction` (String): Indica se é entrada ou saída (INBOUND / OUTBOUND).
>     *   `status` (String): Status da fatura (PENDING, PAID, PARTIALLY_PAID, CANCELED, OVERDUE).
>     *   `issueDate` (DateTime): Data de emissão.
>     *   `dueDate` (DateTime): Data de vencimento.
>     *   `totalAmount` (double): Valor total bruto.
>     *   `discount` (double?): Descontos aplicados.
>     *   `finalAmount` (double): Valor final líquido.
>     *   `notes` (String?): Observações ou justificativas.
> *   **Relacionamento:** Associado opcionalmente a um Usuário/CAC (`User`) que é o sacado/pagador, ou a um Fornecedor genérico. Deve estar associado ao Clube ou Armeiro criador (se aplicável).
> 
> **2. Entidade Item da Fatura (InvoiceItem)**
> Detalhamento do que está sendo cobrado/pago (ex: Mensalidade, Serviço de Despachante, Peça de Manutenção).
> *   **Campos:** 
>     *   `description` (String): Descrição do item.
>     *   `quantity` (double): Quantidade (pode ser horas, unidades, etc).
>     *   `unitPrice` (double): Preço unitário.
>     *   `totalPrice` (double): Preço total do item.
> *   **Relacionamento:** Deve estar estritamente vinculado a uma Fatura (`Invoice`).
> 
> **3. Entidade Pagamento (Payment)**
> Representa a transação financeira real que quita (total ou parcialmente) a Fatura, ligada a gateways de pagamento.
> *   **Campos:** 
>     *   `paymentDate` (DateTime): Data em que o pagamento foi realizado.
>     *   `amountPaid` (double): Valor pago na transação.
>     *   `paymentMethod` (String): Forma de pagamento (CREDIT_CARD, PIX, BOLETO, CASH).
>     *   `status` (String): Status da transação (PROCESSING, COMPLETED, FAILED, REFUNDED).
>     *   `gatewayTransactionId` (String?): ID retornado pelo gateway de pagamento (se houver).
> *   **Relacionamento:** Deve estar vinculado à Fatura de origem (`Invoice`).
> 
> ---
> 
> ### Formato da Sua Entrega:
> 
> **Passo 1: Geração dos YAMLs**
> Forneça o código YAML estruturado (`.spy.yaml`) para as 3 entidades (`invoice`, `invoice_item`, `payment`), contendo as declarações `class`, `table`, `fields` e `indexes`.
> 
> **Passo 2: Instrução ao Usuário**
> Escreva uma mensagem curta me instruindo a rodar o comando `serverpod generate` no terminal, explicando que os Models serão gerados para uso na etapa seguinte.
> 
> **Passo 3: Geração dos Repositórios e Endpoints (Controllers)**
> Após a instrução, forneça o código Dart para:
> *   **Repositories:** Os arquivos (ex: `invoice_repository.dart`) contendo a Interface e a Implementação.
> *   **Endpoints:** Os códigos dos Endpoints (`InvoiceEndpoint`, `PaymentEndpoint`). Devem atuar como *Controllers* na Clean Architecture, implementando `Create`, `Read`, `Update`, `Delete` e `List`. No Endpoint de listagem de Faturas, inclua parâmetros de filtro para listar por `originModule`, `direction` e `status`.