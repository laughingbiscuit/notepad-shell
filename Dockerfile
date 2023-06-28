FROM alpine:3

#RUN apk update
#RUN apk add chromium chromium-chromedriver curl xvfb-run jq busybox-extras ruby
#RUN echo "xvfb-run chromedriver --disable-dev-shm-usage --disable-gpu --no-sandbox --disable-setuid-sandbox &" > start.sh
#ADD test.sh .

RUN apk add --update busybox-extras curl git docker gettext pandoc
RUN apk add kind --repository=https://dl-cdn.alpinelinux.org/alpine/edge/
RUN apk add kubectl --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community
COPY gen /gen
ENTRYPOINT ["/gen"]

