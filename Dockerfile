FROM atmoz/sftp:latest

RUN apt-get update && apt-get install -y cron

COPY crontab /etc/crontab

RUN sed -i '2s/^/\/etc\/init.d\/cron start \n/' entrypoint
