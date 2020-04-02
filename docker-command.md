# docker命令使用记录

- 运行redis
```
docker run --name redis -d -p 6379:6379 --restart=always redis:latest 
```

- 运行mysql
```
docker run -d --name local-mysql -p 3306:3306 --restart=always -e MYSQL_ROOT_PASSWORD=123456 mysql:8.0 
```

- 运行mongodb
``` 
docker run -d -p 27017:27017 --name mongo --restart=always mongo:latest
```
