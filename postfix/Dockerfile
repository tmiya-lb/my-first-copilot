FROM debian:11.6-slim

RUN adduser bounce
RUN date | md5sum | awk '{ printf("bounce:%s", $1) }' | chpasswd
RUN apt update && apt upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt install postfix -y
COPY main.cf /etc/postfix/
COPY entrypoint.sh /
RUN chmod u+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
