# Mocking REST API
* Postman mock server
* Stubby
* [Wiremock](https://wiremock.org/)
* [JSON server](https://github.com/typicode/json-server)
* [Node-RED](https://flows.nodered.org/)
* [MockServer](https://www.mock-server.com/)

## REST API Specification
```
GET /products/:id

Case 1 :: Success
Status code = 200
Response
{
    "id": 1,
    "name": "Product name 01",
    "price": 100
}

Case 2 :: Success with slow (6 seconds)
Status code = 200
Response
{
    "id": 2,
    "name": "Product name 02",
    "price": 200
}

Case 3 :: Product not found in system
Status code = 404
Response
{
    "message": "Product is=3 not found in system"
}

Case 4 :: System error
Status code = 500
Response
{
    "message": "System error"
}
```

## [Postman mock server](https://learning.postman.com/docs/designing-and-developing-your-api/mocking-data/matching-algorithm/)


## [Stubby4node](https://github.com/mrak/stubby4node)

Install
```
$npm install -g stubby
```

Create file `api.yml`
```
-  request:
      url: /products/1
      method: GET
   response:
    - status: 200
      headers:
         content-type: application/json
      file: 1.json

-  request:
      url: /products/2
      method: GET
   response:
    - status: 200
      latency: 6000
      headers:
         content-type: application/json
      file: 2.json

-  request:
      url: /products/3
      method: GET
   response:
    - status: 404
      headers:
         content-type: application/json
      file: 3.json

-  request:
      url: /products/4
      method: GET
   response:
    - status: 500
      headers:
         content-type: application/json
      file: 4.json
```

Run server
```
$stubby -d api.yml
```

List of APIs
* http://localhost:8882/products/1
* http://localhost:8882/products/2
* http://localhost:8882/products/3
* http://localhost:8882/products/4
