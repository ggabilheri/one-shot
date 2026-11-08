---
id: 0006
title: Componentização Estrita de UI via Classes Widget
status: accepted
date: 2026-11-08
tags: [ui, performance]
---

# 0006 - Componentização Estrita de UI via Classes Widget

## Context

No desenvolvimento Flutter, é comum a utilização de métodos privados ou funções auxiliares que retornam widgets (`Widget _buildSomething()`) para subdividir a estrutura de telas. Embora pareça conveniente inicialmente, esse antipadrão faz com que todo o método seja reexecutado a cada rebuild do widget pai, invalida a alocação de nós imutáveis (`const`), dificulta a identificação de gargalos no Flutter DevTools e prejudica a reutilização limpa de código.

## Decision

É estritamente vedada a criação de funções ou métodos que retornam `Widget`. Todo e qualquer componente visual, inclusive subpartes de uma tela, deve ser declarado como uma classe dedicada (`StatelessWidget` ou `StatefulWidget`). Cada widget específico de uma funcionalidade deve residir em um arquivo individual dentro do diretório `widgets/` da respectiva feature.

## Consequences

**Pros:**
- Rebuilds refinados e isolados estritamente ao componente afetado, otimizando drasticamente a performance de renderização.
- Aproveitamento máximo de construtores `const` na árvore de widgets, reduzindo consumo de memória.
- Clareza no Flutter Inspector e nos rastros de stack do DevTools.
- Código modular e legível com arquivos de tamanho controlado.

**Cons:**
- Criação de múltiplos arquivos pequenos dentro de subpastas `widgets/`.
- Pequeno aumento de código declarativo inicial comparado a funções utilitárias rápidas.

**Neutros:**
- Componentes genéricos e transversais permanecem centralizados na biblioteca de design/tokens (`core/theme/`).

## Alternatives considered

- **Métodos auxiliares `Widget _build...()` na própria classe da página** — descartado por propagar rebuilds excessivos do estado pai e poluir a árvore do DevTools.
- **Funções de nível superior retornando `Widget`** — descartado pelos mesmos motivos de perda de ciclo de vida e quebra de otimização `const`.

## Applied in

- apps/backoffice_web — apps/backoffice_web/lib/src/ui
- apps/company_portal — apps/company_portal/lib/src/ui
- apps/shooter_app — apps/shooter_app/lib/src/ui

