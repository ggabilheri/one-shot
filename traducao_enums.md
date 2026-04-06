**Título da Tarefa:** Implementar Camada de Tradução/Localização (i18n) para Enums da Plataforma

**Descrição:**
Criar a padronização e a camada de tradução (Localização/i18n) para todos os **Enums e Status** utilizados no sistema "App One-shot". 

Para manter as melhores práticas e o código limpo, o **Back-end (Serverpod) e o banco de dados devem continuar armazenando os valores em Inglês** (caixa alta ou padrão CamelCase para enums). A tarefa consiste em criar no **Front-end (Flutter)** uma camada de extensão ou arquivos de internacionalização (ex: `.arb` do pacote `intl`) para traduzir e renderizar as strings corretamente em **Português (pt-BR)** para os usuários finais em todos os 4 aplicativos (Backoffice, Clube, Armeiro e CAC).

---

### 🛠 Especificação Técnica

**1. Mapeamento de Domínios (Enums a serem traduzidos):**
Com base nas regras de negócio de acervo, assinaturas e faturamento, os seguintes grupos devem ser mapeados:

*   **Módulo e Tipos de Plano (Origin/PlanType):**
    *   `BACKOFFICE` ➔ Backoffice
    *   `CLUB` ➔ Clube de Tiro
    *   `GUNSMITH` ➔ Armeiro
    *   `CAC` ➔ CAC (Atirador/Colecionador/Caçador)
*   **Faturamento (Invoice Status e Direction):**
    *   `PENDING` ➔ Pendente
    *   `PAID` ➔ Pago
    *   `PARTIALLY_PAID` ➔ Parcialmente Pago
    *   `CANCELED` ➔ Cancelado
    *   `OVERDUE` ➔ Vencido
    *   `INBOUND` ➔ Entrada (Receita)
    *   `OUTBOUND` ➔ Saída (Despesa)
*   **Pagamentos (Payment Method e Status):**
    *   `CREDIT_CARD` ➔ Cartão de Crédito
    *   `PIX` ➔ PIX
    *   `BOLETO` ➔ Boleto Bancário
    *   `CASH` ➔ Dinheiro
    *   `PROCESSING` ➔ Processando
    *   `COMPLETED` ➔ Concluído
    *   `FAILED` ➔ Falhou
    *   `REFUNDED` ➔ Reembolsado
*   **Assinaturas (Subscription Status e Periodicity):**
    *   `ACTIVE` ➔ Ativo
    *   `INACTIVE` ➔ Inativo
    *   `PAUSED` ➔ Pausado
    *   `MONTHLY` ➔ Mensal
    *   `QUARTERLY` ➔ Trimestral
    *   `ANNUALLY` ➔ Anual
*   **Acervo de Armas e Documentos:**
    *   *Finalidade:* `DEFENSE` ➔ Defesa, `SPORT` ➔ Esporte, `COLLECTION` ➔ Coleção, `HUNTING` ➔ Caça.
    *   *Uso:* `PERMITTED` ➔ Permitido, `RESTRICTED` ➔ Restrito.
    *   *Ação:* `AUTOMATIC` ➔ Automática, `SEMI_AUTOMATIC` ➔ Semi-Automática, `REPETITION` ➔ Repetição.
    *   *Documentos:* `NF` ➔ Nota Fiscal, `CR` ➔ Certificado de Registro, `CRAF` ➔ CRAF, `GT` ➔ Guia de Tráfego.
*   **Estoque e Munições:**
    *   *Classificação:* `ORIGINAL` ➔ Original, `RELOADED` ➔ Recarga.

**2. Implementação no Front-end (Flutter):**
*   Criar um diretório `/utils/extensions` ou utilizar o pacote `intl` de localização do Flutter.
*   Se optar por **Extensions**, criar métodos `get label` (ex: `extension InvoiceStatusExt on InvoiceStatus { String get label { ... } }`) para converter facilmente o enum gerado pelo client do Serverpod para o nome legível em português que irá aparecer nos `Dropdowns` e `DataTables`.

**3. Implementação no Back-end (Serverpod):**
*   Caso os campos ainda estejam como `String` nos arquivos `.spy.yaml` antigos, refatorá-os para utilizar a tipagem de `enum` nativa do Serverpod (ex: criar arquivos `invoice_status.spy.yaml` contendo a declaração de enumeração).

---

### ✅ Critérios de Aceite (DoD - Definition of Done)

- [ ] **1. Back-end Enums:** Garantir que o Serverpod esteja gerando tipagens fortes (Enums) ao invés de Strings soltas para as propriedades mapeadas acima.
- [ ] **2. Camada de Tradução (Front-end):** Criadas as extensões (Dart Extensions) ou o dicionário de localização mapeando todos os valores do Inglês para o Português.
- [ ] **3. Refatoração de UI:** Telas de listagem (DataTables) e formulários (Dropdowns) atualizadas para utilizar os métodos de tradução (ex: `item.status.label`). Nenhuma string em inglês deve vazar para a visão do usuário (Backoffice, Clube, Armeiro ou CAC).
- [ ] **4. Fallback:** Implementado um tratamento seguro (fallback) para caso o backend retorne um status não mapeado, renderizando um valor genérico (ex: "Desconhecido") ao invés de quebrar a tela.
- [ ] **5. Teste Unitário:** Criar um teste simples no Flutter garantindo que todos os valores dos Enums possuem uma tradução correspondente não nula.