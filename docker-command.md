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

- image相关命令
```
# 列出所有imageId
docker images -q

# 清理掉所有image
docker rmi $(docker images -q)

# 清理掉所有悬挂镜像
docker image prune -f

# 清理所有未使用镜像
docker image prune -a

# 保存镜像
docker save -o ubuntu.tar ubuntu:18.04

# 加载镜像
docker load -i ubuntu.tar  
```

- container相关命令
```
# 查看容器监控
docker stats

# 查看所有容器
docker ps -a 

# 查看所有容器id
docker ps -aq

# 清理掉所有停止容器
docker container prune -f

# 清理掉所有容器
docker rm $(docker ps -aq) 
```

- volume相关命令
``` 
# 清理掉无用数据卷
docker volume prune -f
```
