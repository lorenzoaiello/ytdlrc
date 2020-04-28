FROM qmcgaw/youtube-dl-alpine

ENV HOME=/mnt/pvc
ENV GOPATH /go

RUN apk add --update go git musl-dev ca-certificates
RUN go get github.com/ncw/rclone \
	&& cp /go/bin/rclone /usr/bin
RUN rm -rf /go \
	&& apk del go git musl-dev \
	&& rm -rf /tmp/* /var/cache/apk/*

COPY ./ytdlrc /usr/local/bin/ytdlrc

