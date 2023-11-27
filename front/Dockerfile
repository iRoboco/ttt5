FROM node:alpine as build

WORKDIR /app
COPY . .
RUN npm ci && npm run build

FROM nginx:alpine

ENV PORT=8080
EXPOSE $PORT

COPY --from=build /app/public /app/public
ADD nginx.conf /etc/nginx/nginx.template
CMD sh -c "envsubst \"`env | awk -F = '{printf \" \\\\$%s\", $1}'`\" < /etc/nginx/nginx.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"