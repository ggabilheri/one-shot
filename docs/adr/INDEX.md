# Architecture Decision Records — INDEX

> Ultima atualizacao: 2026-11-08 (6 ADRs)

<!-- ADR-INDEX-START -->
| ID | Titulo | Status | Tags | Problema (1-linha) | Decisao (1-linha) |
|----|--------|--------|------|---------------------|--------------------|
| 0001 | Arquitetura Backend com Clean Architecture no Serverpod | accepted | architecture, data | O Serverpod convenciona em sua documentação o uso de métodos de ORM e lógica de negócio dentro do... | O backend do One-Shot adota Clean Architecture desacoplando estritamente Endpoints (transporte e ... |
| 0002 | Padrão MVVM com ViewmodelState e Injeção via GetIt no Flutter | accepted | architecture, state-management, ui | As três aplicações Flutter do ecossistema (apps/backofficeweb, apps/companyportal, apps/shooterap... | O front-end adota Clean Architecture adaptada com o padrão MVVM (Model-View-ViewModel). Cada tela... |
| 0003 | Roteamento Declarativo com Qlevar Router e IPresenter | accepted | ui, cross-cutting | Aplicações Flutter compartilhando ecossistema web e mobile (backofficeweb, companyportal, shooter... | O ecossistema adota a biblioteca qlevarrouter como padrão de roteamento (QR.to, QR.toName). Quand... |
| 0004 | Monorepo Full-Stack Dart com RPC Tipado via Serverpod Client | accepted | http, data, cross-cutting | A arquitetura do One-Shot compreende três aplicações Flutter distintas (apps/backofficeweb, apps/... | O projeto é estruturado em um monorepo Dart full-stack utilizando o Serverpod. A comunicação de r... |
| 0005 | Testes de Integração com Banco Efêmero Transacional via serverpod_test | accepted | testing, data | O backend gerencia regras de negócio com forte dependência de integridade de dados (planos de ass... | A suíte de testes de validação do backend padroniza testes de integração utilizando o pacote serv... |
| 0006 | Componentização Estrita de UI via Classes Widget | accepted | ui, performance | No desenvolvimento Flutter, é comum a utilização de métodos privados ou funções auxiliares que re... | É estritamente vedada a criação de funções ou métodos que retornam Widget. Todo e qualquer compon... |
<!-- ADR-INDEX-END -->
