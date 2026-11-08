---
id: 0001
title: Arquitetura Backend com Clean Architecture no Serverpod
status: accepted
date: 2026-11-08
tags: [architecture, data]
---

# 0001 - Arquitetura Backend com Clean Architecture no Serverpod

## Context

O Serverpod convenciona em sua documentação o uso de métodos de ORM e lógica de negócio dentro dos próprios endpoints. Em um sistema com fluxos complexos de CAC, regras financeiras e múltiplas integrações, acoplar regras de negócio diretamente à camada de transporte e ao ORM dificulta a manutenção, reutilização e testes unitários isolados.

## Decision

O backend do One-Shot adota Clean Architecture desacoplando estritamente Endpoints (transporte e autenticação), Use Cases (regras de negócio da aplicação) e Repositórios (abstração de persistência sobre o ORM do Serverpod). A injeção de dependências entre essas camadas é centralizada via Service Locator (`Injections`).

## Consequences

**Pros:**
- Regras de negócio independentes do protocolo de transporte e do framework Serverpod.
- Facilidade para escrever testes de regras de aplicação sem depender do ciclo de vida dos endpoints.
- Separação clara de responsabilidades, facilitando o trabalho concorrente de desenvolvimento.

**Cons:**
- Maior quantidade de arquivos e boilerplate por operação (interface de repositório, implementação, use case e endpoint).
- Pequeno overhead inicial na navegação do código em comparação a métodos monolíticos diretos no endpoint.

**Neutros:**
- As entidades continuam compartilhando as definições de modelos `.spy.yaml` do Serverpod para manter o client RPC tipado.

## Alternatives considered

- **Lógica e ORM diretamente nos Endpoints (padrão Serverpod)** — descartado por gerar endpoints com alto acoplamento entre regras de negócio e camada RPC, tornando complexo o reuso de lógica e a testabilidade.
- **Microserviços independentes por domínio** — descartado devido à complexidade operacional e de rede desnecessária para o estágio atual do produto.

## Applied in

- oneshot_server — oneshot_server/lib/src/endpoints
- oneshot_server — oneshot_server/lib/src/domain
- oneshot_server — oneshot_server/lib/src/data

