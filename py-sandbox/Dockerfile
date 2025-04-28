# ========== python script sandbox ==========
FROM python:bookworm AS py-script-sandbox

# packages
RUN apt update && \
    apt install -y dumb-init

# scripts
RUN mkdir /root/py-sandbox
WORKDIR /root/py-sandbox

COPY py-sandbox/scratch.py .

ENTRYPOINT [ "/usr/bin/dumb-init", "--" ]

CMD ["tail", "-f", "/dev/null"]
