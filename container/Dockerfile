FROM debian:trixie
COPY ./src/ /home/hub/
COPY ./20-hub /etc/sudoers.d/
COPY ./env_setup /root/
COPY ./custom/user_files/ /home/hub/user_files/
COPY ./custom/global_files/ /home/hub/global_files/
COPY ./custom/global_init.sh /root/
COPY ./custom/sudoers.custom.d/ /etc/sudoers.d/sudoers.custom.d/
RUN apt update
RUN apt install -y openssh-server
RUN apt install -y sudo
RUN useradd hub
RUN sed -i -e "s/\/bin\/sh/\/home\/hub\/hub_shell/" /etc/passwd
RUN chown -R hub:hub /home/hub/
RUN chmod -R 700 /home/hub/
RUN chmod -R 700 /root/env_setup
RUN bash /root/global_init.sh
CMD . /root/env_setup
