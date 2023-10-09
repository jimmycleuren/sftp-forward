FROM atmoz/sftp:latest

RUN apt-get update && apt-get install cron rsync
