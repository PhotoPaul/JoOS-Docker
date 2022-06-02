# JoOS Docker

### Basic Installation:
```
git clone https://github.com/PhotoPaul/JoOS-Docker.git
git clone https://github.com/PhotoPaul/JoOS-API.git ./JoOS-Docker/images/joos-api/src
docker compose -f JoOS-Docker/docker-compose.yml up
```

### Initialization:
First you need to set your password:

http://localhost:4200/auth/reset?token=setPassword

### Login Credentials:
**Email:** `admin@change.me`

**Password:** `Use the password you set during Initialization`
