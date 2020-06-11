# docker命令使用记录

- run相关命令
```
# 运行mongodb
docker run -d -p 27017:27017 --name mongo --restart=always mongo:latest 

# 运行mysql
docker run -d --name local-mysql -p 3306:3306 --restart=always -e MYSQL_ROOT_PASSWORD=123456 mysql:8.0 

# 运行redis
docker run --name redis -d -p 6379:6379 --restart=always redis:latest 

# 运行执行容器结束后删除
docker run --rm ubuntu:18.04 ls

# 分配一个终端运行结束后删除
docker run --rm -it ubuntu:18.04
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

# 重命名容器名称
docker oldname newname
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

# 列出容器及其size
docker ps -s
```

- volume相关命令
``` 
# 清理掉无用数据卷
docker volume prune -f
```

- build相关命令
```
# build当前目录的Dockerfile
docker build -t yapi:1.8.8 .

# build指定目录的Dockerfile
docker build --network host -t yapi:1.8.8 -f /root/docker/ .
```

- login相关命令
``` 
docker login -u user -p pass hub.docker.com
```

- logout相关命令
```
docker logout hub.docker.com 
```
