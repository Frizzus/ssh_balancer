FROM debian:trixie
# ENV HUB_PASSWD "dfE45$£d-@1"
COPY . /home/hub/
RUN apt update
RUN apt install -y openssh-server
RUN useradd hub
# RUN echo "hub:$HUB_PASSWD" | chpasswd 
RUN sed -i -e "s/\/bin\/sh/\/usr\/bin\/bash/" /etc/passwd
RUN chown -R hub:hub /home/hub/
CMD service ssh start ;if echo "hub:$HUB_PASSWD" | chpasswd ;then tail -f /dev/null; fi; echo "\$HUB_PASSWD is not set !" 
#  if test -v HUB_PASSWD ; then echo "hub:$HUB_PASSWD" | chpasswd ; else echo "\$HUB_PASSWD is not set !" && exit 0; fi ;
