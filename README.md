# Json-Server-RESTful-API
Use JSON-Server to build RESTful API Server.

在 Android 手機上用 Termux 架設 JSON-Server RESTful server.

# Termux APK
TermuxAPK folder

# Http Method
GET 取得資料

POST 新增資料

PUT 修改資料(完整、會將原本包含的刪除)

PATCH 修改資料(局部、只更動修改部分)

DELETE 刪除

# Tremux command

    - termux-setup-storage	(termux 與手機 storage 連接)
    - apt update && apt upgrade	(update apt)
    - apt install coreutils	(安裝基本 linux 指令)
    - apt install vim		(安裝 vim)

# Tremux Openssh
		
    - apt install openssh
    - whoami		(termux中檢視使用者名稱)
    - passwd u0_a266	(重新設定使用者密碼，登入時候需要使用)
    - sshd		(run Openssh server)
		
# Mobaxterm SSH to Tremux Openssh
		
    - Install Mobaxterm
    - Setup SSH connection
    - host: 192.168.43.16
    - specify username tick
    - Enter the username that was queried by whomai; ex: u0_a266
    - Enter the port number : 8022

# Install Json-Server and Node.JS
		
    - mkdir Node
    - cd Node
    - apt install nodejs
    - npm install -g json-server
    - Edit a JSON file	(ex: db.json)
    - Start Json-Server command : json-server --watch db.json --port 8080 --host 192.168.43.16
		
# Update npm version
	
    - npm install -g npm@8.1.4
		
# Example db.Json

```json
{
  "enote": {
    "text": "Hi JW",
    "flag": true
  },
  "smartmirror": {
    "calender_context": "Demo app",
    "flag": true,
    "Date": "2021/08/09"
  }
}
```

# CURL command

```bash
#!/bin/bash
MESSAGE='{"text":"Hi JW","flag":true}'
API_URL=http://192.168.43.16:8080/enote

CURL -s -X POST \
	-H 'Content-Type: application/json;charset=utf-8' \
	-d "$MESSAGE" \
	$API_URL
```

```bash
#!/bin/bash
CURL -s -X GET http://192.168.43.16:8080/enote
```

# Reference
		
[https://github.com/typicode/json-server](https://github.com/typicode/json-server)
[https://github.com/typicode/json-server#cli-usage](https://github.com/typicode/json-server#cli-usage)
