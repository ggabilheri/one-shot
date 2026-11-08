---
id: 0005
title: Testes de Integração com Banco Efêmero Transacional via serverpod_test
status: accepted
date: 2026-11-08
tags: [testing, data]
---

# 0005 - Testes de Integração com Banco Efêmero Transacional via serverpod_test

## Context

O backend gerencia regras de negócio com forte dependência de integridade de dados (planos de assinatura, vínculo de armas, regras financeiras e permissões). Testes puramente unitários baseados em mocks mascaram falhas de chaves estrangeiras, divergências de geração SQL do ORM do Serverpod e comportamentos inesperados em transações.

## Decision

A suíte de testes de validação do backend padroniza testes de integração utilizando o pacote `serverpod_test` conectado a uma instância real de banco PostgreSQL (`postgres_test` via Docker localmente e em CI). Cada teste opera sob isolamento transacional com rollback automático (`RollbackDatabase`), assegurando idempotência e rapidez na execução sem persistência de estado residual.

## Consequences

**Pros:**
- Validação fidedigna de constraints de integridade referencial, triggers e comportamentos reais do banco PostgreSQL.
- Cenários de teste executados de ponta a ponta através dos endpoints e use cases.
- Isolamento confiável entre baterias de testes sem necessidade de recriação manual de esquema a cada teste.

**Cons:**
- Dependência de um container PostgreSQL em execução no ambiente local e no runner do GitHub Actions.
- Tempo de execução ligeiramente superior ao de suítes de testes unitários em memória puras.

**Neutros:**
- Mocks continuam permitidos exclusivamente para gateways de serviços externos de terceiros (ex.: Asaas, APIs de consulta de CNPJ/CEP).

## Alternatives considered

- **Testes unitários com Mocks universais (mocktail / mockito)** — descartado por não validar integridade referencial de banco, queries de ORM e transações complexas.
- **Banco em memória SQLite para testes** — descartado devido a incompatibilidades de dialeto SQL e tipos específicos de dados do PostgreSQL usados pelo Serverpod.

## Applied in

- oneshot_server — oneshot_server/test/integration
- infraestrutura — .github/workflows/ci.yml
- infraestrutura — docker-compose.yaml

