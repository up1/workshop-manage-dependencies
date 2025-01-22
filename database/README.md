# Mocking Database
* Working with Docker
  * Create database server
  * Create database name
  * Create tables
  * Create data for test from test cases
  * Delete all

## Working with Docker

### MySQL
```
$docker compose up -d mysql
$docker compose ps
NAME      IMAGE         COMMAND                  SERVICE   CREATED          STATUS                    PORTS
mysql     mysql:8.4.0   "docker-entrypoint.s…"   mysql     10 seconds ago   Up 10 seconds (healthy)   0.0.0.0:3306->3306/tcp, 33060/tcp
```

Access to mysql container to check data
```
$docker exec -it mysql bash
$mysql -uuser01 -ppassword01
$use hellodb
$show tables;
$select * from users;
```

Delete all
```
$docker compose down
```

