## Dockerfile links

* [yapi Dockerfile](https://github.com/zlzlife/docker/blob/master/yapi/Dockerfile)

## 依赖mongo数据库
```
docker run -d -p 27017:27017 --name yapi-mongo --restart=always zlzlife/yapi-mongo:1.0.0
```

## yapi config配置文件

- 下载config.json
    ```
    wget https://raw.githubusercontent.com/zlzlife/docker/master/yapi/config.json -O ~/config.json
    ```

- 修改配置
    ```
    {
      "port": "3000",
      "adminAccount": "admin@admin.com",
      "db": {
        "servername": "192.168.x.xx",
        "DATABASE": "yapi",
        "port": 27017
      },
      "mail": {
        "enable": true,
        "host": "smtp.163.com",
        "port": 465,
        "from": "***@163.com",
        "auth": {
          "user": "***@163.com",
          "pass": "*****"
        }
      }
    }
    ```

## 运行容器

```
docker run -d -p 3000:3000 -v ~/config.json:/app/config.json --name yapi zlzlife/yapi:1.8.8
```

## 访问
- 浏览器打开 http://localhost:3000
- 初始登录的账号密码为:
  - user : admin@admin.com
  - pwd : 12345678
