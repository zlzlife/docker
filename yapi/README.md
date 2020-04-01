# Yapi镜像制作及docker-compose一键部署

### 基础镜像制作

* 修改Dockerfile文件的 **VERSION** 变量,当前(v1.8.8). 最新版本可查看 [CHANGELOG.md](https://github.com/YMFE/yapi/blob/master/CHANGELOG.md) 

* 执行Dockerfile生成基础镜像

```
   docker build --network host -t yapi:1.8.8 .
```

* 运行yapi镜像

```
    docker run -d -p 3000:3000 -v ./config.json:/app/config.json --name yapi yapi:1.8.8
```

* 现有镜像

```
    docker pull zlzlife/yapi:1.8.8 
```

### docker-compose一键自动化部署
