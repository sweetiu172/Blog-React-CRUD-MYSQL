FROM mysql:latest

COPY init.sql /docker-entrypoint-initdb.d/
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=blog_posts
ENV MYSQL_USER=lehungtran12
ENV MYSQL_PASSWORD=123456

VOLUME ["/var/lib/mysql"]

EXPOSE 3306

CMD ["mysqld"]
