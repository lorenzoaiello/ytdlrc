FROM laiello/youtube-dl-docker:latest

ENV HOME=/mnt/pvc

COPY ./rclone /usr/local/bin/rclone
COPY ./ytdlrc /usr/local/bin/ytdlrc

