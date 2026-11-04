# Racó Hosting · web comercial servida con nginx
# Uso:  docker run -d -p 8080:80 --name raco-web ghcr.io/oskillar28/raco-hosting:latest
FROM nginx:1.27-alpine

LABEL org.opencontainers.image.title="Racó Hosting" \
      org.opencontainers.image.description="Web de Racó Hosting: Jellyfin, Minecraft y almacenamiento en NAS. Proyecto de 2º SMX." \
      org.opencontainers.image.source="https://github.com/Oskillar28/raco-hosting" \
      org.opencontainers.image.url="https://oskillar28.github.io/raco-hosting/" \
      org.opencontainers.image.licenses="All-Rights-Reserved"

# Configuración propia: sin caché para el contador de capacidad y cabeceras de seguridad básicas
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Contenido de la web (index.html, capacidad.json y la captura)
COPY docs/ /usr/share/nginx/html/

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD wget -q -O /dev/null http://127.0.0.1/ || exit 1
