#!/bin/bash

mongo <<EOF

use yapi;
db.createCollection('adv_mock');
db.createCollection('adv_mock_case');
db.createCollection('avatar');
db.createCollection('follow');
db.createCollection('group');
db.createCollection('identitycounters');
db.createCollection('interface');
db.createCollection('interface_auto_sync');
db.createCollection('interface_case');
db.createCollection('interface_cat');
db.createCollection('interface_col');
db.createCollection('log');
db.createCollection('project');
db.createCollection('statis_mock');
db.createCollection('token');
db.createCollection('user');
db.createCollection('wiki');

db.user.insert(
    {
        "_id" : NumberInt(11),
        "study" : true,
        "type" : "site",
        "username" : "admin",
        "email" : "admin@admin.com",
        "password" : "5a43b033958884b6e7a307bcf17f0c601a961c14",
        "passsalt" : "dzc9px4z918",
        "role" : "admin",
        "add_time" : 1568606190,
        "up_time" : 1569319132,
        "__v" : NumberInt(0)
    }
);

EOF

# yapi初始化的登录账号密码
# user : admin@admin.com
# pwd  : 12345678
