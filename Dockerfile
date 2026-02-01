FROM python:3.11-slim

ENV PYTHONUNBUFFERED=1 \
    LOG_DIR=/var/log/ssh-bot

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      openssh-client && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY ssh-bot.py .

RUN pip install --no-cache-dir \
      python-telegram-bot==13.15 \
      paramiko \
      pyte \
      six

ENTRYPOINT ["python", "ssh-bot.py"]
