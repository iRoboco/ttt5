Merge code from [this tutorial](https://habr.com/ru/post/460991/) to serverless containers (Yandex Cloud).  
Tic Tac Toe game, powered by [Svelte](https://github.com/sveltejs/svelte) and [C++ Boost.Beast](https://www.boost.org/doc/libs/1_83_0/libs/beast/doc/html/index.html).

## Get started

Clone the project:
```bash
git clone https://github.com/iRoboco/ttt5.git
cd ttt5
```
### Build containers and push it in Yandex.Registry:
* Build the backebnd
```bash
cd beast
docker build -t ttt5-backend:latest .
docker tag #(will be continued...)
docker push #(will be continued...)
```
* Build the frontend:
```bash
cd front
docker build -t ttt5-frontend:latest .
docker tag #(will be continued...)
docker push #(will be continued...)
```
* Check builded images:
```bash
docker images
```
>Result in terminal
>```
>REPOSITORY     TAG       IMAGE ID       CREATED          SIZE
>ttt-frontend   latest    35f270c84ef3   11 seconds ago   46MB
>ttt5-backend   latest    7a55ca15bed1   24 minutes ago   79.4MB
>```

### Run images locally

* Backend:
```bash
docker run -e PORT=8080 -p 8080:8080 ttt5-backend:latest /app/http_server_sync 0.0.0.0 ${PORT} /app
```

* Frontend:
```bash
docker run -e PORT=8080 -p 8080:8080 ttt5-frontend:latest
```