FROM vaca/rc

COPY world /root/world
RUN cat /root/world >> /etc/apk/world && apk -U fix && rm -f /var/cache/apk/*

COPY over /
RUN chown root:shadow /etc/shadow && chmod 0660 /etc/shadow
