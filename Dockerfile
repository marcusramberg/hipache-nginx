from ubuntu:12.10
maintainer Andy Rothfusz <andy@dotcloud.com>
version 1.0
docker-version 0.4.0
sudo add-apt-repository ppa:nginx-openresty/stable
run apt-get update
run apt-get install -y -q nginx  lua-resty-redis
add . /src
expose 8080
cmd ["nginx","-c","/src/nginx-example.cfg"]
