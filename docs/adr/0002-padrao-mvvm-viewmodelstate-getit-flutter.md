---
id: 0002
title: Padrão MVVM com ViewmodelState e Injeção via GetIt no Flutter
status: accepted
date: 2026-11-08
tags: [architecture, state-management, ui]
---

# 0002 - Padrão MVVM com ViewmodelState e Injeção via GetIt no Flutter

## Context

As três aplicações Flutter do ecossistema (`apps/backoffice_web`, `apps/company_portal`, `apps/shooter_app`) necessitam de gerência de estado homogênea e desacoplada da camada visual. Espalhar chamadas de serviço e controle de estado diretamente dentro de `StatefulWidget` prejudica a testabilidade, manutenibilidade e reutilização entre web e mobile.

## Decision

O front-end adota Clean Architecture adaptada com o padrão MVVM (Model-View-ViewModel). Cada tela (`Page`) estende `ViewmodelState` conectando-se a um ViewModel que implementa sua interface de contrato (`I...Viewmodel`) e estende a base `Viewmodel` (`ChangeNotifier`). O gerenciamento de dependências entre ViewModels, Services e Repositories é centralizado via `GetIt`.

## Consequences

**Pros:**
- Separação rígida entre lógica de apresentação/negócio (ViewModel) e renderização declarativa (View).
- Facilidade para mockar dependências e testar ViewModels de forma isolada do framework visual.
- Ciclo de vida previsível e padronização entre diferentes módulos e apps do monorepo.

**Cons:**
- Necessidade de manter interfaces e classes de ViewModel para cada página (`feature_page.dart` e `feature_viewmodel.dart`).
- Curva de aprendizado para novos desenvolvedores acostumados com chamadas diretas no `StatefulWidget`.

**Neutros:**
- Notificações de mudança de estado usam o mecanismo nativo `ChangeNotifier` do Flutter sem depender de streams complexas.

## Alternatives considered

- **BLoC / flutter_bloc** — descartado devido ao alto volume de código boilerplate para definição de eventos, estados e reducers para fluxos CRUD simples.
- **Riverpod / Provider puro** — descartado para evitar dispersão de regras de negócio em múltiplos providers e garantir injeção orientada a interfaces via `GetIt`.

## Applied in

- apps/backoffice_web — apps/backoffice_web/lib/src/core
- apps/company_portal — apps/company_portal/lib/src/core
- apps/shooter_app — apps/shooter_app/lib/src/core

