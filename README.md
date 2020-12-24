# TODO
node_modules 설치를 위한 npm 설치

# 개요
`Docker`를 사용하여 `Laravel`, `Maria DB`를 쉽게 사용할 수 있도록 기본 환경을 제공한다.



# Version
PHP 7.4
NGINX 1.19
Maria DB 10.5

# 사용법

### 설치
```
git clone https://github.com/sosisusy/docker-php74-server
```

### First Laravel


```
# step 1
docker-compose up -d

# step 2
docker-compose exec php composer install
docker-compose exec php npm install

# step 3
cd laravel
cp .env.example .env
docker-compose exec php php artisan key:generate

# step 4
# http://localhost:80
```