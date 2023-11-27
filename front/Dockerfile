FROM node:stable-alpine as build

WORKDIR /app
COPY . .
RUN npm ci && npm run build

FROM nginx:stable-alpine

COPY --from=build /app/public /app/public
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080