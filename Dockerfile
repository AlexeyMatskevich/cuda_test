        FROM nvcr.io/nvidia/cuda:12.2.0-devel-ubuntu20.04

        WORKDIR /usr/src/app
        RUN  apt-get update \
          && apt-get install -y wget libssl-dev \
          && rm -rf /var/lib/apt/lists/*
        RUN wget https://github.com/Kitware/CMake/releases/download/v3.27.4/cmake-3.27.4.tar.gz && tar -zxvf cmake-3.27.4.tar.gz && cd cmake-3.27.4 && ./bootstrap && make && make install

        CMD ["/usr/bin/bash"]