FROM node:18

COPY . .
RUN yarn

EXPOSE 5000
ENV MYSQL_HOST=mysql_db
ENV MYSQL_USER=lehungtran12
ENV MYSQL_PASSWORD=123456
ENV MYSQL_DB=blog_posts
CMD ["node", "/config/db.js"]