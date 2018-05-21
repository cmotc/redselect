FROM alpine:3.7
RUN apk update
RUN apk add bash wget lynx html-xml-utils
COPY bin/* bin/
CMD redget
