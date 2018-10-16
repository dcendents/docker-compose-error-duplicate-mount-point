FROM alpine:latest as production

VOLUME ["/mnt"]

CMD ["ping","google.com"]
