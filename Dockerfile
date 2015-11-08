FROM cows/mu

COPY over /
RUN ["/root/after"]
