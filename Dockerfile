FROM debian:bookworm-slim

RUN apt-get update
RUN apt-get -y install gfortran
RUN apt-get -y install libblas-dev liblapack-dev
RUN apt-get -y install cmake
RUN apt-get -y install git
RUN git clone https://gitlab.com/Uk-amor/RMT/rmatrixII.git
WORKDIR "/rmatrixII"
RUN cmake source
RUN make 
