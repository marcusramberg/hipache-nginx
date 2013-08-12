from ubuntu:12.10
maintainer Marcus Ramberg <marcus@nordaaker.com>
version 1.0
run apt-get install -y -q software-properties-common
run add-apt-repository ppa:nginx-openresty/stable
run apt-get update
run apt-get install -y -q nginx  lua-resty-redis
add . /src
expose 8080
cmd ["nginx","-c","/src/nginx-example.cfg"]
