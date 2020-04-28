FROM qmcgaw/youtube-dl-alpine

ENV HOME=/mnt/pvc

RUN curl https://rclone.org/install.sh | sudo bash

COPY ./ytdlrc /usr/local/bin/ytdlrc

