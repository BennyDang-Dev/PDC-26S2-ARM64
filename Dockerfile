FROM ubuntu:22.04
LABEL org.opencontainers.image.source=https://github.com/BennyDang-Dev/PDC-26S2-ARM64

# Install mpi
RUN apt-get -y update && apt-get install -y mpich libmpich-dev
