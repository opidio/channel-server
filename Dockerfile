FROM crosbymichael/python

RUN pip install --upgrade youtube_dl httpie && mkdir /http
WORKDIR /http

COPY example .
RUN for v in $(find . -name youtube.url); do (export video=$(cat $v) && cd `dirname $v` && youtube-dl $video -o 1080p.mp4) done
