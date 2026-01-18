FROM nginx:alpine
# Nginx config'i kopyala
COPY nginx.conf /etc/nginx/nginx.conf
# Port 8080'i aç (Railway default)
EXPOSE 8080
# Nginx'i başlat
CMD ["sh", "-c", "envsubst '$$PORT' < /etc/nginx/nginx.conf > /tmp/nginx.conf && nginx -c /tmp/nginx.conf -g 'daemon off;'"]
