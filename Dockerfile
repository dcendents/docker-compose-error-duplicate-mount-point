FROM alpine:latest

VOLUME ["/mnt"]

CMD ["ping","google.com"]
