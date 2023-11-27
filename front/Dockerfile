FROM node:alpine as build

WORKDIR /app
COPY . .
RUN npm ci && npm run build

FROM nginx:alpine

EXPOSE 8080

COPY --from=build /app/public /app/public
ADD nginx.conf /etc/nginx/nginx.conf