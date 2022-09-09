## C ENVIRONMENT TO DEVELOP AND TEST COMMON-CORE PROJECTS

# Set image from docker-hub
FROM debian:stable

# Install needed packages 
RUN apt update -y
RUN apt install openssh-server -y
RUN apt install vim -y
RUN apt install build-essential -y
RUN apt-get install manpages -y
RUN apt install net-tools

# Create and set the workdir
RUN useradd -ms /bin/bash marvin
WORKDIR /home/marvin
RUN usermod -aG sudo marvin
RUN echo "marvin:42marvin" | chpasswd

# set and run docker-entrypoint
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]