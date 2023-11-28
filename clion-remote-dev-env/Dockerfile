FROM ubuntu:latest AS build

# Install tools required for the project
RUN apt-get update \
    && apt-get install gcc -y \
    && apt-get install g++ -y \
    && apt-get install cmake -y \
    && apt-get install wget -y \
    && apt-get install clang -y \
    && apt-get install gdb -y \
    && apt-get install openssh-server -y

# Install Boost
RUN cd /home \
    && wget -q https://github.com/boostorg/boost/releases/download/boost-1.83.0/boost-1.83.0.tar.gz \
    && tar xfz boost-1.83.0.tar.gz \
    && rm boost-1.83.0.tar.gz \
    && cd boost-1.83.0 \
    && ./bootstrap.sh --with-libraries=system \
    && ./b2 install > /dev/null

# Taken from - https://docs.docker.com/engine/examples/running_ssh_service/#environment-variables
RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

# 22 for ssh server. 7777 for gdb server.
EXPOSE 22 7777

# Create dev user with password 'dev'
RUN useradd -ms /bin/bash dev
RUN echo 'dev:dev' | chpasswd

# Upon start, run ssh daemon
CMD ["/usr/sbin/sshd", "-D"]
