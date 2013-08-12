from ubuntu:precise
maintainer Marcus Ramberg <marcus@nordaaker.com>
version 1.0
run echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
run apt-get install -y -q  python-software-properties
run add-apt-repository -y ppa:nginx-openresty/stable
run apt-get update
run apt-get install -y -q nginx-openresty liblua5.1-resty-redis
add . /src
expose 8080
cmd ["nginx","-c","/src/nginx-example.cfg"]
