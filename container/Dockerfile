FROM debian:trixie
COPY ./src/ /home/hub/
COPY ./20-hub /etc/sudoers.d/
RUN apt update
RUN apt install -y openssh-server
RUN apt install -y sudo
RUN useradd hub
RUN sed -i -e "s/\/bin\/sh/\/usr\/bin\/bash/" /etc/passwd
RUN chown -R hub:hub /home/hub/
RUN chmod -R 700 /home/hub/
CMD service ssh start ;if echo "hub:$HUB_PASSWD" | chpasswd ;then tail -f /dev/null; fi; echo "\$HUB_PASSWD is not set !" 
