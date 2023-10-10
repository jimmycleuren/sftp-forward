FROM atmoz/sftp:latest

RUN apt-get update && apt-get install -y cron

COPY crontab /etc/crontab

CMD cron
