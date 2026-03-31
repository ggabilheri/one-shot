

## Visão geral do projeto

Abaixo está um resumo do que já está implementado no repositório **oneshot_flutter**, organizado de acordo com a arquitetura Clean Architecture + MVVVM descrita nas regras do usuário.

### 1️⃣ Camada **core**
| Arquivo | Função |
|---|---|
| [viewmodel.dart](cci:7://file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_flutter/lib/src/core/viewmodel.dart:0:0-0:0) | Define a interface [IViewmodel](cci:2://file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_flutter/lib/src/core/viewmodel.dart:2:0-7:1) (loading, error) e a classe base [Viewmodel](cci:2://file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_flutter/lib/src/core/viewmodel.dart:9:0-30:1) que implementa essa interface. |
| [viewmodel_state.dart](cci:7://file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_flutter/lib/src/core/viewmodel_state.dart:0:0-0:0) | Implementa a classe genérica `ViewmodelState<T, VM>` que liga um `StatefulWidget` ao seu [Viewmodel](cci:2://file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_flutter/lib/src/core/viewmodel.dart:9:0-30:1) (registro via GetIt, listener para atualizar a UI). |

### 2️⃣ Camada **domain**
- **models**, **repositories** e **services** ainda não possuem arquivos (diretórios vazios). Isso indica que ainda não foram criados os modelos de negócio, repositórios e serviços específicos da aplicação.

### 3️⃣ Camada **ui**
#### Pages
| Página | Descrição |
|---|---|
| [home_page.dart](cci:7://file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_flutter/lib/src/ui/pages/home/home_page.dart:0:0-0:0) | Tela inicial ([HomePage](cci:2://file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_flutter/lib/src/ui/pages/home/home_page.dart:4:0-9:1)) que estende `ViewmodelState<HomePage, IHomeViewmodel>`. Exibe um `Scaffold` simples com AppBar e texto “Home Page”. |
| [home_viewmodel.dart](cci:7://file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_flutter/lib/src/ui/pages/home/home_viewmodel.dart:0:0-0:0) | Define a interface [IHomeViewmodel](cci:2://file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_flutter/lib/src/ui/pages/home/home_viewmodel.dart:2:0-2:51) (extende [IViewmodel](cci:2://file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_flutter/lib/src/core/viewmodel.dart:2:0-7:1)) e a implementação vazia [HomeViewmodel](cci:2://file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_flutter/lib/src/ui/pages/home/home_viewmodel.dart:4:0-4:66) (estende [Viewmodel](cci:2://file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_flutter/lib/src/core/viewmodel.dart:9:0-30:1)). |

#### Components / Modules
- Ainda não há componentes ou módulos criados dentro de `ui/components` ou `ui/modules`. Eles podem ser adicionados conforme novas funcionalidades forem desenvolvidas.

### 4️⃣ Camada **injections**
| Arquivo | Função |
|---|---|
| [repositories_injections.dart](cci:7://file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_flutter/lib/src/injections/repositories_injections.dart:0:0-0:0) | (vazio) – ponto de registro de injeções de repositórios. |
| [services_injections.dart](cci:7://file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_flutter/lib/src/injections/services_injections.dart:0:0-0:0) | (vazio) – ponto de registro de injeções de serviços. |
| [viewmodel_injections.dart](cci:7://file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_flutter/lib/src/injections/viewmodel_injections.dart:0:0-0:0) | Registra a fábrica do [HomeViewmodel](cci:2://file:///Users/ggbailheri/Developer/oneshot/oneshot/oneshot_flutter/lib/src/ui/pages/home/home_viewmodel.dart:4:0-4:66) usando GetIt (`registerFactory<IHomeViewmodel>(() => HomeViewmodel())`). |

### 5️⃣ Rotas
- O diretório `routes` ainda não contém arquivos, portanto ainda não há definição de rotas (ex.: `app_routes.dart`). Isso será necessário quando novas páginas forem adicionadas.

### 6️⃣ Outros arquivos relevantes
| Arquivo | Observação |
|---|---|
| `pubspec.yaml` | Declara as dependências do Flutter, incluindo `get_it` e outras necessárias para a arquitetura. |
| `main.dart` | Ponto de entrada da aplicação (não detalhado aqui, mas já está configurado para iniciar o Flutter). |

## Conclusão

- **Implementado**: estrutura básica da camada **core**, a página **Home** com seu ViewModel, e a injeção de dependência do ViewModel.
- **Pendentes**: criação de modelos de domínio, repositórios, serviços, rotas, componentes reutilizáveis e demais páginas/funcionalidades da aplicação.

Essa visão geral pode servir como ponto de partida para planejar as próximas etapas de desenvolvimento, como:

1. Definir os **models** de domínio (ex.: `User`, `Session`, etc.).
2. Implementar **repositories** e **services** que encapsulam a lógica de negócios e acesso a dados.
3. Registrar esses novos objetos nas injeções correspondentes.
4. Criar novas **pages**, **viewmodels** e **widgets** seguindo a mesma estrutura de pastas (`ui/pages/<feature>/`, `ui/pages/<feature>/widgets/`).

Caso queira avançar em alguma dessas áreas ou precise de detalhes adicionais (por exemplo, como registrar novas rotas ou criar um widget específico), basta informar a próxima tarefa.