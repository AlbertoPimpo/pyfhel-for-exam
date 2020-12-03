FROM ubuntu:bionic
RUN apt-get update && apt-get install lzip git make sudo -y
RUN sudo apt-get install software-properties-common -y
RUN sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
RUN sudo apt-get update
RUN sudo apt-get install build-essential libssl-dev libpython3-all-dev gcc-6 g++-6 python3 python3-pip zlib1g-dev -y
RUN pip3 install Cython
COPY . Pyfhel
# RUN git clone --recursive https://github.com/AlbertoPimpo/Pyfhel.git
WORKDIR "./Pyfhel"
#RUN git submodule update --init --recursive
RUN pip3 install .