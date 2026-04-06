Aja como um Arquiteto de Software Sênior e Especialista em Serverpod.
Preciso que você implemente o Módulo 1: Usuários e Acervo (CACs) do sistema "App One-shot". O sistema utiliza Dart com o framework Serverpod no backend e deve seguir os princípios de Clean Architecture.
Para garantir que o código funcione perfeitamente com o ecossistema do Serverpod, vamos dividir sua entrega em três passos.
Nomenclatura em Inglês: Todas as classes, campos, endpoints e relações devem estar em inglês (PascalCase para classes, camelCase para atributos).
Chaves Primárias em UUID: Adicione o campo de ID gerado como UuidValue.
Chaves Estrangeiras Implícitas: O Serverpod gerencia foreign keys através do relacionamento. Use apenas a referência do objeto (ex: user: User?, relation), não crie os campos Id manualmente.
Índices (Indexes): Adicione blocos de índices nos .spy.yaml para melhorar a performance em consultas (ex: CPF, Número de Série).
Repositórios Num Só Arquivo: Na implementação da Clean Architecture, você deve criar as interfaces (abstract class) e as suas respectivas implementações (class XImpl implements X) dentro de um único arquivo .dart para cada repositório.
1. Entidade Usuário (User / CAC)
Campos: Nome, gênero (sexo), data de nascimento, RG, CPF, telefone, e-mail
. Relacionamento com a entidade separada de Endereço (Address).
2. Entidade Arma (Firearm)
Campos técnicos: Finalidade (defesa, esporte, coleção, caça), tipo (pistola, revólver, etc.), ação, uso (permitido/restrito), número de série, país de fabricação, fabricante, modelo, ferrolho, armação, empunhadura/cabo, estado de conservação, calibre, quantidade de canos, comprimento do cano, tipo da alma, tipo de mira, número de raias, sentido das raias, capacidade do carregador, quantidade de carregadores, medidas (A x C x L), peso
.
Campos de histórico e valor: Data de aquisição, preço de compra, data e valor da venda, dados do comprador, customizações (texto longo), imagens, histórico de limpezas, histórico de manutenções, quantidade total de disparos
.
Relacionamento: Vinculado opcionalmente a um Usuário (User)
.
3. Entidade Acessório (Accessory)
Campos: Finalidade, tipo (prensa, die, luneta, etc.), data de aquisição, número de série, país de fabricação, fabricante, modelo, descrição, estado de conservação, uso (permitido/restrito), medidas, peso, cor, material/acabamento, preço de compra, número da nota fiscal, emissão da nota, vendedor/CNPJ, órgão de registro, customizações, histórico de manutenções e imagens
.
Relacionamento: Vinculado a um Usuário (User) e opcionalmente a uma Arma (Firearm)
.
4. Entidade Documento (Document)
Campos: Tipo de documento (NF, CR, CRAF, GT), órgão de registro (Sigma, Sinarm), número do documento, data de emissão, data de vencimento, arquivo/foto (URL/Path), nome do fornecedor, CPF/CNPJ, telefone e endereço do fornecedor
.
Relacionamento: Associado a um Usuário (User). Se não for CR, pode estar relacionado a uma Arma (Firearm) ou Acessório (Accessory)
.
Passo 1: Geração dos YAMLs Forneça o código YAML estruturado (.spy.yaml) para as 4 entidades (user, firearm, accessory, document), contendo as declarações class, table, fields e indexes.
Passo 2: Instrução ao Usuário Escreva uma mensagem curta me instruindo a rodar o comando serverpod generate no terminal. Explique brevemente que o código Dart das entidades (Models) será gerado automaticamente pelo Serverpod a partir dos YAMLs, e que as próximas etapas dependerão dessas classes geradas.
Passo 3: Geração dos Repositórios e Endpoints (Controllers) Após a instrução, assumindo que as classes já foram geradas, forneça o código Dart para:
Repositories: Forneça os arquivos (ex: user_repository.dart) contendo a Interface e a Implementação juntas no mesmo arquivo, contendo os métodos necessários para banco de dados.
Endpoints: Forneça os códigos dos Endpoints (UserEndpoint, FirearmEndpoint, AccessoryEndpoint, DocumentEndpoint). Cada endpoint deve atuar como um Controller na Clean Architecture, injetando/instanciando o respectivo repositório e implementando os métodos Create, Read (Ler por ID), Update, Delete e List (com paginação e filtros comuns).