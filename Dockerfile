FROM vaca/rc

RUN apk -U add sudo openssh && rm -f /var/cache/apk/*
COPY over /
