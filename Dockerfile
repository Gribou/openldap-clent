FROM alpine:3.18

MAINTAINER FT

RUN set -eux; \
    apk add --update --no-cache \
        openldap-clients
RUN echo '172.17.193.240 ldapds.lfpw.aviation-civile.gouv.fr' >> /etc/hosts
RUN adduser -S user  -G root
USER user
WORKDIR /home/user

CMD ["sh", "-c", "tail -f /dev/null"]
