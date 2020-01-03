FROM ubuntu:latest
LABEL maintainer jamilgafur

RUN apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y libatomic-ops-dev byobu build-essential libatomic1 \
  python gfortran perl wget m4 cmake pkg-config \
  curl pkg-config bc git htop man unzip vim wget cmake && \
  rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/JuliaLang/julia.git && \
  cd julia && \
  make 

ENV PATH="${PATH}:/julia" 
ENV PATH="${PATH}:/julia/base/" 
ENV PATH="${PATH}:/julia/src/" 
ENV PATH="${PATH}:/julia/src/support/"


