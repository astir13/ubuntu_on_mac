#
# Ubuntu Development Dockerfile
#
# https://github.com/astir13/ubuntu_on_mac
#
# build using docker build -t ubuntu_on_mac .
# run using docker run -it ubuntu_on_mac

# Pull base image.
FROM ubuntu:18.10

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y vim ssh

# Add files.
COPY root/.bashrc /root/.bashrc
COPY root/.ssh/* /root/.ssh/

ENV HOME /root

WORKDIR /root

CMD ["bash"]
