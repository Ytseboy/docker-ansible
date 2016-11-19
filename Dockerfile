FROM alpine:latest
MAINTAINER Daniel Freitas <danfreitaschn+github@gmail.com>

RUN echo "@edge http://dl-4.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
RUN apk --update upgrade && apk add bash ansible@edge
RUN mkdir -p /etc/ansible 


COPY run.sh /usr/bin/run.sh
RUN  chmod +x /usr/bin/run.sh

# CMD ["bash"]
ENTRYPOINT ["/usr/bin/run.sh"]
