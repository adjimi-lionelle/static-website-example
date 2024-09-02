
FROM nginx:alpine

# Copie des fichiers du site web
COPY app /usr/share/nginx/html

# Copie le fichier de configuration Nginx
COPY config/nginx.conf /etc/nginx/nginx.conf


# Créer un script d'entrée pour modifier dynamiquement le port dans le fichier de configuration
COPY config/start.sh /start.sh
RUN chmod +x /start.sh

# Utilise le script d'entrée pour démarrer Nginx
ENTRYPOINT ["/start.sh"]
