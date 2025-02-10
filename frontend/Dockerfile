FROM node:18 AS builder
WORKDIR /app
COPY . .

RUN yarn && yarn build

FROM node:18-alpine
WORKDIR /app
COPY --from=builder /app/build /app/build
RUN ls -l
RUN npm install serve -g
RUN which serve

EXPOSE 3000
CMD ["serve", "-s", "build"]