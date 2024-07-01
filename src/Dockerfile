FROM debian:trixie
COPY . /root
RUN apt update
RUN apt install -y openssh-server
CMD service ssh start ; tail -f /dev/null


