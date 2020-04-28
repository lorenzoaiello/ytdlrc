FROM qmcgaw/youtube-dl-alpine

ENV HOME=/mnt/pvc

COPY ./rclone /usr/local/bin/rclone
COPY ./ytdlrc /usr/local/bin/ytdlrc

