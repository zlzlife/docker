# docker项目


### 制作yapi-mongo基础镜像

```
   cd yapi-mongo && docker build --network host -t yapi-mongo:1.0.0 .
```

### 制作yapi基础镜像

``` 
   cd yapi && docker build --network host -t yapi:1.8.8 .
```

### docker-compose一键部署yapi
1. 进入yapi,修改config.json, docker-compose.yml文件

2. 执行docker-compose.yml

```
    cd yapi && docker-compose up -d
```

3. 浏览器访问 http://localhost:3000
    - user : admin@admin.com
    - pwd  : 12345678
