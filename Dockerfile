FROM vaca/rc

COPY world /root/world
RUN cat /root/world >> /etc/apk/world && apk -U fix && rm -f /var/cache/apk/*

COPY over /
