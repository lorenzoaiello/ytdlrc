FROM qmcgaw/youtube-dl-alpine

ENV HOME=/mnt/pvc
ENV GOPATH /go

RUN apt update && apt install go git musl-dev ca-certificates
RUN go get github.com/ncw/rclone \
	&& cp /go/bin/rclone /usr/bin
RUN rm -rf /go

COPY ./ytdlrc /usr/local/bin/ytdlrc

