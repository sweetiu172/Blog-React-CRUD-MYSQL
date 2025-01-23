FROM node:18

COPY . .

RUN yarn && yarn build
RUN npm install serve -g
RUN which serve

EXPOSE 3000
CMD ["serve", "-s", "build"]