# Usar la imagen oficial de PostgreSQL
FROM postgres:latest
# Configurar variables de entorno
ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=admin123
ENV POSTGRES_DB=mi_base_datos
# Copiar scripts de inicialización al contenedor
COPY init.sql /docker-entrypoint-initdb.d/
