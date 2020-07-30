FROM ubuntu:xenial

ENV USERNAME pivot
ENV DEBIAN_FRONTEND noninteractive
RUN echo 'nameserver 8.8.4.4' > /etc/resolv.conf

# built-in packages
RUN apt-get update
RUN apt-get -o Dpkg::Options::='--force-confold' --force-yes -fuy dist-upgrade

# common utils apt
RUN apt-get install -y python-apt software-properties-common curl wget jq sudo git apt-utils \
    build-essential unzip tmux dnsutils iputils-ping netcat lsof nmap tcpdump tmate traceroute \
    tcptraceroute mtr vim-common ccze libs3-2 wget jd zlibc zlib1g-dev openssl \
    libxslt1-dev libxml2-dev libssl-dev libreadline6 libreadline-dev libyaml-dev libsqlite3-dev \
    sqlite3 groff locales-all net-tools bc netcat-openbsd apt-transport-https ca-certificates \
    python3 python3-dev python3-venv virtualenv openssh-server 

