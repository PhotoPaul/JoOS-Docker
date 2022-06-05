# JoOS Docker

### Installation:
```
git clone https://github.com/PhotoPaul/JoOS-Docker.git
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

### Uninstall:
#### Linux:
```
docker compose -f JoOS-Docker/docker-compose.yml down -v
docker image rm joos-docker_api joos-docker_joos mariadb
rm -rf JoOS-Docker/
```
#### Windows:
```
docker compose -f JoOS-Docker/docker-compose.yml down -v
docker image rm joos-docker_api joos-docker_joos mariadb
rmdir /s /q JoOS-Docker
```
