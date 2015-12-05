FROM crosbymichael/python

RUN apt-get update && apt-get install --yes nodejs npm && pip install --upgrade youtube_dl httpie && npm install -g http-server && mkdir /http
WORKDIR /http

COPY example .
RUN for v in $(find . -name youtube.url); do (export video=$(cat $v) && cd `dirname $v` && youtube-dl $video -o 1080p.mp4) done

CMD http-server -p 8000
