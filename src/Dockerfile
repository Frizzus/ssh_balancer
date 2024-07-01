FROM debian:trixie
COPY . /home/hub/
RUN apt update
RUN apt install -y openssh-server
RUN useradd hub
RUN echo "hub:dfE45$£d-@1" | chpasswd 
RUN sed -i -e "s/\/bin\/sh/\/usr\/bin\/bash/" /etc/passwd
RUN chown -R hub:hub /home/hub/
CMD service ssh start ; if test -v $HUB_PASSWD ; then echo "\$HUB_PASSWD is not set !" && exit 0 ; else echo "hub:$HUB_PASSWD" | chpasswd ; fi ; tail -f /dev/null
 
