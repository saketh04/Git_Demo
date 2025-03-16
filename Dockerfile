FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
    curl \
    openssh-server=1:7.6p1-4ubuntu0.3 \
    openssl=1.1.0g-2ubuntu4 \
    python=2.7.15~rc1-1
CMD ["bash"]
