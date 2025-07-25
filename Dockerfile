FROM nginx:alpine

# Copiar archivos estáticos
COPY . /usr/share/nginx/html/

# Configuración personalizada de nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Exponer puerto 80
EXPOSE 80

# Comando por defecto
CMD ["nginx", "-g", "daemon off;"]