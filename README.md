# JoOS Docker

### Basic Installation:

#### Linux:
```
git clone https://github.com/PhotoPaul/JoOS-Docker.git
git clone https://github.com/PhotoPaul/JoOS-API.git ./JoOS-Docker/images/joos-api/src
cp JoOS-Docker/images/joos-api/src/settings.example.php JoOS-Docker/images/joos-api/src/settings.php
```
#### Windows:
```
git clone https://github.com/PhotoPaul/JoOS-Docker.git
git clone https://github.com/PhotoPaul/JoOS-API.git ./JoOS-Docker/images/joos-api/src
copy JoOS-Docker\images\joos-api\src\settings.example.php JoOS-Docker\images\joos-api\src\settings.php
```
### Run:
```
docker compose -f JoOS-Docker/docker-compose.yml up
```

### Initialize:
First you need to set your password:

http://localhost:4200/auth/reset?token=setPassword

### Login Credentials:
**Email:** `admin@change.me`

**Password:** `Use the password you set during Initialization`
