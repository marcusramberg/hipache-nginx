from ubuntu:precise
maintainer Marcus Ramberg <marcus@nordaaker.com>
version 1.0
ENV DEBIAN_FRONTEND noninteractive
run echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
run apt-get install -y -q  python-software-properties
run add-apt-repository -y ppa:nginx-openresty/stable
run apt-get update
run apt-get install -y -q nginx-openresty liblua5.1-resty-redis redis-server
add . /src
run cp /src/supervisor.conf /etc/supervisor/conf.d/nginx-hipache.conf
expose 8080 6379
cmd ["supervisord"]
