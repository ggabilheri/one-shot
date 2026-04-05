# Stage 1: Build
FROM ghcr.io/cirruslabs/flutter:3.41.6 AS build
WORKDIR /app

# O contexto do build será a RAIZ do projeto no docker-compose
# Copiar dependências locais primeiro (cache friendly)
COPY oneshot_client/ /oneshot_client/

# Copiar o app específico
COPY apps/backoffice_web/ /app/

# Configurar pacotes locais no pubspec se necessário (o pubspec já usa path: ../../oneshot_client)
# Como estamos em /app, ../../oneshot_client aponta para /oneshot_client se o contexto for a raiz.
# Ajustamos o WORKDIR ou caminhos conforme necessário.

RUN flutter pub get
RUN flutter build web --release --no-tree-shake-icons

# Stage 2: Serve
FROM nginx:alpine
# Copiar o build do estágio anterior
COPY --from=build /app/build/web /usr/share/nginx/html
# Copiar a configuração do nginx
COPY apps/backoffice_web/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
