```
openapi: 3.0.1
info:
  title: ttt5-APP-Gateway
  version: 1.0.0
servers:
- url: https://d5dnq**********7eano.apigw.yandexcloud.net
paths:
  # This unit call backend at /number
  /number:
    get:
      tags:
        - backend
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
        container_id: bbacs**********8sv3j
        service_account_id: aje8n**********vqmf6
  
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
        container_id: bbaou**********cfnnl
        service_account_id: aje8n**********vqmf6

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
        container_id: bbaou**********cfnnl
        service_account_id: aje8n**********vqmf6
        method: "GET"
        path: "/{filename}"
```