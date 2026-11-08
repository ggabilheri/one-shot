---
id: 0003
title: Roteamento Declarativo com Qlevar Router e IPresenter
status: accepted
date: 2026-11-08
tags: [ui, cross-cutting]
---

# 0003 - Roteamento Declarativo com Qlevar Router e IPresenter

## Context

Aplicações Flutter compartilhando ecossistema web e mobile (`backoffice_web`, `company_portal`, `shooter_app`) exigem suporte robusto a rotas aninhadas, histórico sincronizado no navegador web e desacoplamento de comandos de transição de tela. Chamar métodos imperativos do `Navigator` diretamente nos ViewModels viola a separação de camadas e dificulta testes de apresentação.

## Decision

O ecossistema adota a biblioteca `qlevar_router` como padrão de roteamento (`QR.to`, `QR.toName`). Quando uma navegação é disparada por regras de negócio presentes no ViewModel, adota-se o padrão `IPresenter` para intermediar a transição entre o ViewModel e a camada de navegação.

## Consequences

**Pros:**
- Suporte maduro e leve para navegação aninhada (layouts com abas e painéis de administração).
- URLs amigáveis e sincronização limpa do histórico na Web sem dependência pesada de `build_runner`.
- ViewModels permanecem desacoplados da árvore de contexto (`BuildContext`) para efetuar redirecionamentos.

**Cons:**
- Ecossistema de comunidade menor se comparado ao pacote oficial `go_router`.
- Necessidade de configuração do padrão `IPresenter` para fluxos de navegação condicionais complexos.

**Neutros:**
- Rotas declaradas em módulos específicos de cada app (`routes.dart`).

## Alternatives considered

- **go_router** — descartado por instabilidades históricas no manuseio de rotas aninhadas complexas na web e por acoplamento com `BuildContext` na maioria das transições.
- **auto_route** — descartado devido à dependência extensiva de geração de código via `build_runner`, aumentando o tempo de build do monorepo.

## Applied in

- apps/backoffice_web — apps/backoffice_web/lib/src/routes
- apps/company_portal — apps/company_portal/lib/src/routes
- apps/shooter_app — apps/shooter_app/lib/src/routes

