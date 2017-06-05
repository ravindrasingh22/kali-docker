FROM kalilinux/kali-linux-docker
MAINTAINER Ravindra Singh (it.ravindrasingh@gmail.com)

ENV DEBIAN_FRONTEND noninteractive
ADD ./init.sh /init.sh
# Install metasploit
RUN apt-get -y update ; apt-get -y --force-yes install ruby metasploit-framework

# Attach this container to stdin when running, like this:
# docker run -t -i linux/kali/metasploit
CMD /init.sh
