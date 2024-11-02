FROM alpine:latest

WORKDIR /

COPY ./bin/gofm-linux-amd64 /

RUN mkdir -p /musica

EXPOSE 8080

CMD [ "/gofm-linux","-p=8080","-d=/musica","-r" ]