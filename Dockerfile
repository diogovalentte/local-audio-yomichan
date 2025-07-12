FROM python:3.10-slim AS clone

WORKDIR /repo

RUN apt update && apt install git sed -y
RUN git clone https://github.com/diogovalentte/local-audio-yomichan.git

FROM gcr.io/distroless/python3:nonroot
COPY --from=clone /repo/local-audio-yomichan /repo/local-audio-yomichan
WORKDIR /repo/local-audio-yomichan

ENV XDG_DATA_HOME=/data \
    ACCESS_HOSTNAME=localhost \
    BIND_HOSTNAME=localhost \
    WO_ANKI=1

EXPOSE 5050

CMD ["-u", "run_server.py"] 
