FROM centos:centos7.9.2009

RUN yum -y update
RUN yum -y install https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
RUN yum -y groupinstall "Development Tools"
RUN yum -y install \ 
    kernel-devel \
    kernel-headers \
    gcc-c++ \
    patch \
    libyaml-devel \
    libffi-devel \
    autoconf \
    automake \
    make \
    libtool \
    bison \
    tk-devel \
    zip \
    wget \
    tar \
    gcc \
    zlib \
    zlib-devel \
    bzip2 \
    bzip2-devel \
    readline \
    readline-devel \
    sqlite \
    sqlite-devel \
    openssl \
    openssl-devel \
    git \
    gdbm-devel \
    python-devel

WORKDIR /root
RUN wget https://www.python.org/ftp/python/3.8.0/Python-3.8.0.tgz
RUN tar xzvf Python-3.8.0.tgz

WORKDIR ./Python-3.8.0
RUN ./configure --with-threads
RUN make install

RUN wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
RUN python get-pip.py

RUN pip3 install --upgrade pip
RUN pip3 install --upgrade setuptools
RUN pip3 install fastapi uvicorn python-multipart python-jose peewee python-dotenv psycopg2-binary>=2.8.6

WORKDIR /app

CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]