# ========== general qurrantined  sandbox ==========
FROM debian:bookworm AS deb-sandbox

RUN apt update && \
    apt install -y dumb-init

ENTRYPOINT [ "/usr/bin/dumb-init", "--" ]

CMD ["tail", "-f", "/dev/null"]

# ========== qurantined python sandbox ==========
FROM python:bookworm AS py-sandbox

# packages
RUN apt update && \
    apt install -y dumb-init

ENTRYPOINT [ "/usr/bin/dumb-init", "--" ]

CMD ["tail", "-f", "/dev/null"]

