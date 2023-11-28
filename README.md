Merge code from [this tutorial](https://habr.com/ru/post/460991/) to serverless containers (Yandex Cloud).  
Tic Tac Toe game, powered by [Svelte](https://github.com/sveltejs/svelte) and [C++ Boost.Beast](https://www.boost.org/doc/libs/1_83_0/libs/beast/doc/html/index.html).

## Get started

Clone the project:
```bash
git clone https://github.com/iRoboco/ttt5.git
cd ttt5
```
### Build containers and push it in Yandex.Registry:
In the following commands <registry_ID> must be replaced with the ID value of your [Yandex Cloud Container Registry](https://cloud.yandex.ru/docs/container-registry/)
* Build the backebnd
```bash
cd beast
docker build -t ttt5-backend:latest .
docker tag ttt5-backend cr.yandex/<registry_ID>/ttt5-backend
docker push cr.yandex/<registry_ID>/ttt5-backend
```
* Build the frontend:
```bash
cd front
docker build -t ttt5-frontend:latest .
docker tag ttt5-frontend cr.yandex/<registry_ID>/ttt5-frontend
docker push cr.yandex/<registry_ID>/ttt5-backend
```
* Check builded images:
```bash
docker images
```
>Result in terminal
>```
>REPOSITORY                              TAG       IMAGE ID       CREATED             SIZE
>cr.yandex/<registry_ID>/ttt5-backend    latest    56ac4c64e47b   About an hour ago   79.4MB
>ttt5-backend                            latest    56ac4c64e47b   About an hour ago   79.4MB
>cr.yandex/<registry_ID>/ttt5-frontend   latest    7eab5a1d045e   About an hour ago   46MB
>ttt5-frontend                           latest    7eab5a1d045e   About an hour ago   46MB
>```

### Run containers locally
(the port number is hardcoded in Dockerfile and nginx.conf)
* Backend:
```bash
docker run -p 8080:8080 ttt5-backend:latest
```

* Frontend:
```bash
docker run -p 8080:8080 ttt5-frontend:latest
```