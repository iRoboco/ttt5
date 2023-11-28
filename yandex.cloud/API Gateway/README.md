```
openapi: 3.0.1
info:
  title: ttt5-APP-Gateway
  version: 1.0.0
servers:
- url: https://d5dnq5n8sgbsugv7eano.apigw.yandexcloud.net
paths:
  # This unit call backend at /number
  /number:
    get:
      tags:
        - backend C++
      summary: Get number
      responses:
        '200':
          description: Successful response
          # Add any specific schema for the successful response
        '500':
          description: Internal server error
          # Add any specific schema for the 500 response
      x-yc-apigateway-integration:
        type: serverless_containers
        container_id: bbacsnm1vk5rr8i8sv3j
        service_account_id: ajelgivp974j3983qgej
  
  # This unit call frontend at / to retrive index.html
  /:
    get:
      tags:
        - frontend
      summary: Get APP
      responses:
        '200':
          description: Successful response
          # Add any specific schema for the successful response
        '500':
          description: Internal server error
          # Add any specific schema for the 500 response
      x-yc-apigateway-integration:
        type: serverless_containers
        container_id: bbaoubr1052tu4mcfnnl
        service_account_id: ajelgivp974j3983qgej

  # This unit call frontend at / to retrive another files surch as bundle.js
  /{filename}:
    get:
      tags:
        - frontend
      summary: Get APP
      responses:
        '200':
          description: Successful response
          # Add any specific schema for the successful response
        '500':
          description: Internal server error
          # Add any specific schema for the 500 response
      parameters:
        - name: filename
          in: path
          required: true
          schema:
            type: string
      x-yc-apigateway-integration:
        type: serverless_containers
        container_id: bbaoubr1052tu4mcfnnl
        service_account_id: ajelgivp974j3983qgej
        method: "GET"
        path: "/{filename}"
```