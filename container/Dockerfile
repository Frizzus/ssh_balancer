FROM debian:trixie
COPY ./src/ /home/hub/
RUN apt update
RUN apt install -y openssh-server
RUN apt install -y sudo
RUN useradd hub
RUN sed -i -e "s/\/bin\/sh/\/usr\/bin\/bash/" /etc/passwd
RUN chown -R hub:hub /home/hub/
RUN chmod 770 /home/hub/.ssh/rc
CMD service ssh start ;if echo "hub:$HUB_PASSWD" | chpasswd ;then tail -f /dev/null; fi; echo "\$HUB_PASSWD is not set !" 