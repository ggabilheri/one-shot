# Pré-Refinamento — Brainstorm de Produto

> Artefato **intermediário** (anterior ao PRD / INTENT / TaskCard), produto de um brainstorm em **Tree of Thought**: divergir os rumos possíveis, podar com o usuário e convergir.
>
> **Legenda:**
> - Linhas sem marcação = **FATO** (afirmado pelo usuário).
> - `[HIPÓTESE]` = inferência da skill que precisa ser validada.
> - `[DÚVIDA]` = ponto em aberto, detalhado na seção 13.
> - `[fora do escopo do projeto]` = rumo que extrapola o que este projeto se propõe a ser.

---

## 1. Metadados

- **Nome da Ideia / Feature**: Importação de Extrato Bancário OFX com Validação de Conta e Conciliação
- **Fonte da ideia**: Texto livre do usuário
- **Autor**: OneShot / Antigravity
- **Data**: 08/11/2026
- **Versão**: v1
- **Status**: Refinado (Pronto para próxima etapa)
- **Relacionados**:
  - `apps/backoffice_web/lib/src/ui/pages/finance/bank_accounts/`
  - `apps/backoffice_web/lib/src/ui/pages/finance/entries/`
  - `oneshot_server/lib/src/models/finance/bank_account.spy.yaml`
  - `oneshot_server/lib/src/models/finance/financial_entry.spy.yaml`

---

## 2. Ideia Resumida (uma frase)

Permitir que operadores do Backoffice Web importem arquivos de extrato bancário no formato OFX vinculados a uma conta bancária específica, validando automaticamente se os dados de agência e conta do arquivo correspondem ao registro cadastrado, extraindo as movimentações e viabilizando a conciliação com os lançamentos financeiros.

---

## 3. Esqueleto do Tema (Fase 1 — ramos da árvore)

| # | Ramo | Status (Fase 1) |
|---|------|-----------------|
| A | Validação e Vínculo com a Conta Bancária (Strict vs Sanitizada) | explorar (priorizado) |
| B | Destino das Transações e Conciliação Financeira (Extrato vs Lançamentos) | explorar (priorizado) |
| C | Prevenção de Duplicidades e Idempotência (FITID e Períodos) | explorar (suporte ao fluxo) |
| D | Experiência do Usuário (Pré-visualização e Feedback de Importação) | explorar (suporte ao fluxo) |

---

## 4. Árvore de Rumos (Fase 2 — Tree of Thought)

### Ramo A — Validação e Vínculo com a Conta Bancária

**Direções candidatas:**

- **A1 — Validação Rígida (Bloqueio Total se Divergir):**
  Compara agência e conta do OFX caractere a caractere com o cadastro de `BankAccount`. Se divergir, rejeita sumariamente.
  - _Exemplo:_ OFX com conta `0012345-6` e cadastro `12345-6` causa bloqueio de importação.
  - _Viabilidade:_ Alta segurança contra erros, mas vulnerável a falsos positivos por convenções de zeros à esquerda de cada banco.
- **A2 — Validação Sanitizada com Alerta Explicativo (Direção Escolhida):**
  O sistema normaliza agência e conta (removendo zeros à esquerda e pontuações) para verificar se o arquivo pertence de fato àquela conta bancária. Se divergir totalmente, bloqueia a operação informando claramente a agência e conta encontradas no arquivo versus a conta selecionada.
  - _Exemplo:_ OFX tem agência `0001` e conta `00012345-6`; o sistema compara com `1` e `12345-6`, validando o vínculo com sucesso.
  - _Viabilidade:_ Reutiliza diretamente os campos `agency`, `agencyDigit`, `accountNumber` e `accountDigit` do modelo `BankAccount`.
- **A3 — Sem Validação de Cabeçalho (Vínculo Manual Cego):**
  Ignora as tags `<BANKID>`, `<BRANCHID>` e `<ACCTID>` do OFX e importa na conta aberta no momento.
  - _Viabilidade:_ Inseguro e propenso a contaminação acidental de dados financeiros.

**Direção escolhida**: **A2** — Garante segurança operacional rigorosa, impedindo importação em conta errada, mas sem gerar atrito indevido por variações cosméticas de formatação de bancos.
**Podadas / adiadas**: A1 (rejeitada por excesso de atrito e falso positivo), A3 (rejeitada por risco de integridade).

---

### Ramo B — Destino das Transações e Conciliação Financeira

**Direções candidatas:**

- **B1 — Extrato de Movimentações Simples:**
  Salva as transações apenas como extrato de histórico bancário da conta, sem interagir com contas a pagar/receber.
  - _Exemplo:_ Exibe uma tabela com entradas, saídas e saldo para conferência visual.
  - _Viabilidade:_ Rápido de implementar, porém com entrega de valor financeiro parcial.
- **B2 — Extrato com Sugestão de Conciliação com `financial_entries` (Direção Escolhida):**
  Registra as movimentações bancárias e fornece na interface um painel de conciliação que cruza data e valor com lançamentos pendentes em `financial_entries`, permitindo dar baixa / liquidar com um clique ou criar nova entrada/saída a partir do extrato.
  - _Exemplo:_ Débito de R$ 85,00 encontra despesa pendente de energia elétrica de R$ 85,00 e oferece baixa imediata.
  - _Viabilidade:_ Conecta o extrato importado diretamente ao ciclo de vida financeiro existente.
- **B3 — Conciliação Bloqueante Obrigatória:**
  O arquivo só é persistido se o operador categorizar e der baixa em 100% dos lançamentos durante o modal de importação.
  - _Viabilidade:_ Inviável para extratos com centenas de transações, causando fadiga extrema.

**Direção escolhida**: **B2** — Entrega o valor completo do processo de conciliação bancária sem impor barreiras operacionais inviáveis.
**Podadas / adiadas**: B3 (rejeitada por atrito excessivo), B1 (incorporada como base visual de B2).

---

### Ramo C — Prevenção de Duplicidades e Idempotência

**Direção escolhida**:
- Utilização da tag `<FITID>` (identificador único da transação bancária) em conjunto com a data e valor para garantir que reimportações do mesmo arquivo ou períodos sobrepostos não dupliquem movimentações no sistema.

---

### Ramo D — Experiência do Usuário (UX)

**Direção escolhida**:
- Diálogo de importação em duas etapas:
  1. Upload do arquivo `.ofx` e leitura imediata do cabeçalho com validação da conta bancária;
  2. Pré-visualização do resumo (período detectado, quantidade de transações lidas, novas transações e duplicadas ignoradas) antes de efetivar a importação.

---

## 5. Problema

- **Qual é a dor real hoje?**
  A conferência e lançamento de movimentações bancárias no Backoffice são manuais, lentos e suscetíveis a erros de digitação e esquecimentos.
- **Como o problema aparece no dia a dia?**
  O operador financeiro precisa abrir o extrato no internet banking e lançar linha por linha ou conferir manualmente se as contas foram realmente debitadas ou creditadas.
- **Quem sente o impacto?**
  A equipe financeira e de gestão do Backoffice Web, que perde tempo com rotinas manuais repetitivas e corre risco de descompasso de saldo.
- **Por que resolver agora?**
  O sistema já possui controle de contas bancárias e lançamentos financeiros (`financial_entries`), sendo a importação de extrato o elo que automatiza a conciliação real de caixa.

---

## 6. Objetivo Principal

- Permitir a leitura e importação automatizada de arquivos OFX em contas bancárias cadastradas;
- Impedir que arquivos de uma agência/conta sejam importados acidentalmente em outra conta cadastrada;
- Evitar duplicação de lançamentos e viabilizar a reconciliação ágil com as contas a pagar e receber do sistema.

---

## 7. Público / Usuário Envolvido

- **Persona primária**: Operador Financeiro / Administrador do Backoffice Web.
- **Contexto de uso**: Acesso via navegador desktop na seção Financeiro > Contas Bancárias / Movimentações.

---

## 8. Ancoramento no Projeto (guarda de escopo)

- **Módulo Financeiro do Backoffice Web**: Já conta com cadastro completo de `BankAccount` (com agência, dígitos, conta, saldo) e `financial_entries` (pagar/receber).
- **Backend Serverpod (`oneshot_server`)**: Estrutura robusta de endpoints, repositories e serialização yaml.
- **Guardas de Escopo**:
  - `[fora do escopo do projeto]` Integração via Open Finance / API direta com bancos (conexão bancária ao vivo) — o escopo inicial foca estritamente na importação de arquivos locais `.ofx`.

---

## 9. Escopo Inicial (convergido)

1. **Parser de Arquivo OFX no Backend**: Extração de dados de cabeçalho (`BANKID`, `BRANCHID`, `ACCTID`) e transações (`FITID`, `TRNTYPE`, `DTPOSTED`, `TRNAMT`, `MEMO`).
2. **Validação de Pertinência de Conta**: Regra de negócio que compara a agência/conta do OFX com a `BankAccount` de destino, bloqueando se houver divergência e alertando o usuário.
3. **Persistência de Movimentações Bancárias**: Armazenamento com índice único de `FITID` por conta bancária para evitar duplicatas.
4. **Interface no Backoffice Web**: Diálogo de upload de OFX com feedback de pré-visualização e lista de movimentações com ação de conciliação com `financial_entries`.

---

## 10. Fora do Escopo (podado e adiado)

- Integração automática com APIs bancárias via Open Finance (adiado para versões futuras);
- Regras de conciliação com IA generativa para classificação contábil avançada (adiado);
- Importação de formatos legados como CSV ou PDF de extrato (foco exclusivo em padrão OFX).

---

## 11. Premissas e Hipóteses

- O operador tem acesso ao arquivo `.ofx` exportado diretamente do Internet Banking de sua instituição bancária.
- Os arquivos OFX exportados contêm a tag `<ACCTID>` ou `<BRANCHID>` preenchidas pelo banco.
- `[HIPÓTESE]` Bancos digitais como Nubank ou Inter podem preencher agência como `0001` no OFX mesmo quando a conta não possui dígito de agência no cadastro visual.

---

## 12. Riscos e Efeitos Colaterais

- **Variações de OFX entre Bancos:** Alguns bancos exportam cabeçalhos SGML puros e outros usam padrão XML moderno; o parser precisa ser tolerante a ambas as variantes.
- **Atualização de Saldo da Conta:** A importação pode ajustar ou confrontar o saldo da conta cadastrada com a tag `<LEDGERBAL>` do extrato.

---

## 13. Dúvidas em Aberto (para o próximo framework)

1. A atualização do saldo cadastrado em `BankAccount.balance` deve ser automática com base no saldo final do extrato (`<LEDGERBAL>`) ou deve ser mantida apenas como conferência informativa?
2. A conciliação deve permitir dividir um lançamento bancário em múltiplos lançamentos financeiros (ex: pagamento de fatura única quitando duas despesas)?

---

## 14. Síntese do Discovery

O brainstorm convergiu na criação de um fluxo de importação OFX seguro e produtivo. A validação sanitizada de cabeçalho previne contaminações de contas com alta precisão, enquanto o motor de conciliação associado a `financial_entries` transforma o extrato em uma ferramenta ativa de fechamento financeiro, e não apenas um visualizador estático.

---

## 15. Recomendação de Framework

| Dimensão | Avaliação |
|---|---|
| **Amplitude** | 2-3 rumos convergidos (Parser & Validação, Persistência com Idempotência, Tela de Conciliação) |
| **Personas** | 1 persona (`dev+1` — Operador Financeiro do Backoffice) |
| **Novidade** | Incremento a módulo financeiro existente |
| **Decisão Arquitetural Nova?** | Não (segue Clean Architecture e MVVM existentes) |

### Framework Recomendado: **miniSpec**

A complexidade da feature se enquadra perfeitamente no **miniSpec**: possui escopo claro e delimitado com forte valor agregado de negócio, demandando definição de escopo técnico e geração de tarefas coordenadas, sem a sobrecarga cerimonial de um SDD completo.

**Próximo comando a executar:**
```bash
/agent-spec-minispec-generate-intent
```

