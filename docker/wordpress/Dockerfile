#wordpress
FROM wordpress:latest
COPY setuser.sh /var/www/html
RUN chmod +x /var/www/html/setuser.sh
RUN /var/www/html/setuser.sh