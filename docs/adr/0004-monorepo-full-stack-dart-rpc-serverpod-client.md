---
id: 0004
title: Monorepo Full-Stack Dart com RPC Tipado via Serverpod Client
status: accepted
date: 2026-11-08
tags: [http, data, cross-cutting]
---

# 0004 - Monorepo Full-Stack Dart com RPC Tipado via Serverpod Client

## Context

A arquitetura do One-Shot compreende três aplicações Flutter distintas (`apps/backoffice_web`, `apps/company_portal`, `apps/shooter_app`) consumindo os mesmos domínios e regras no backend. A utilização de contratos REST convencionais com OpenAPI ou endpoints JSON manuais introduz atrito de sincronização, risco de desserialização em runtime e duplicidade na modelagem de DTOs entre cliente e servidor.

## Decision

O projeto é estruturado em um monorepo Dart full-stack utilizando o Serverpod. A comunicação de rede entre as aplicações Flutter e o backend ocorre exclusivamente através do pacote gerado `oneshot_client`, que expõe chamadas RPC com tipagem estática geradas a partir das definições `.spy.yaml` e assinaturas dos métodos em `lib/src/endpoints/`.

## Consequences

**Pros:**
- Tipagem estática fim-a-fim entre frontend e backend sem necessidade de ferramentas de geração externas além do comando `serverpod generate`.
- Mudanças em contratos de API quebram a compilação do frontend imediatamente, prevenindo erros em tempo de execução.
- Reuso integral de modelos, enums e estruturas de dados de domínio em toda a base de código Dart.

**Cons:**
- Forte acoplamento ao ecossistema Serverpod, dificultando a interoperabilidade direta com clientes escritos em outras linguagens sem um gateway REST adicional.
- Necessidade de recompilar e gerar o pacote `oneshot_client` a cada alteração de modelo ou endpoint.

**Neutros:**
- Autenticação e sessão de usuário são propagadas automaticamente pelo cliente Serverpod via tokens seguros.

## Alternatives considered

- **API REST tradicional com JSON / OpenAPI / Swagger** — descartado devido ao custo de manutenção manual de especificações e risco de descompasso de tipagem entre cliente e servidor.
- **GraphQL** — descartado pela sobrecarga de schemas, resolvers e tooling desnecessários quando toda a stack de ponta a ponta é desenvolvida em Dart.

## Applied in

- oneshot_server — oneshot_server/lib/src/endpoints
- oneshot_client — oneshot_client/lib
- apps/backoffice_web — apps/backoffice_web/pubspec.yaml
- apps/company_portal — apps/company_portal/pubspec.yaml
- apps/shooter_app — apps/shooter_app/pubspec.yaml

