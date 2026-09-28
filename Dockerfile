FROM mcr.microsoft.com/devcontainers/cpp:ubuntu22.04
LABEL org.opencontainers.image.source=https://github.com/BennyDang-Dev/PDC-26S2-ARM64

# Install mpi
RUN apt update && apt -y upgrade
RUN apt install -y mpich libmpich-dev

# Install python + jupyter notebook for analysis
RUN apt update
RUN apt install -y pip
RUN pip install pipenv jupyter matplotlib pandas seaborn