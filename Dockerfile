FROM python:3.10-slim

RUN apt update && apt install git sed -y
RUN git clone https://github.com/diogovalentte/local-audio-yomichan.git

ENV XDG_DATA_HOME=/data \
    ACCESS_HOSTNAME=localhost \
    BIND_HOSTNAME=localhost \
    WO_ANKI=1

CMD ["python", "-u", "local-audio-yomichan/run_server.py"] 
