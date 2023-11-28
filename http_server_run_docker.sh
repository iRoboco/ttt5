
#!/bin/bash
export TIMESTAMP=$(date +"%Y-%m-%d_%H-%M")
export PORT=8080

cd beast
docker build -t ttt5-backend:$TIMESTAMP .
docker run -d -it -e PORT=${PORT} -p ${PORT}:8080 ttt5-backend:$TIMESTAMP /app/http_server_sync 0.0.0.0 ${PORT} /app

