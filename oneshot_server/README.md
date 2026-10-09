# oneshot_server

Backend do One-Shot (Serverpod 4).

Para rodar localmente, primeiro suba o Postgres e o Redis (docker-compose na raiz do repositório):

    docker compose up --build --detach postgres redis

Depois inicie o servidor:

    dart bin/main.dart

Quando terminar, pare os serviços:

    docker compose stop
