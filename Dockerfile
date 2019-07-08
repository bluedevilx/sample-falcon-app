#---- Base Image ----#
FROM python:3.7.3-alpine3.10
#RUN apk add build-base

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

#---- Add App ----#
COPY ./app /app
WORKDIR /app

#--- Bootstrap and Run---#
COPY ./docker_entrypoint.sh ./
RUN ["chmod", "+x", "./docker_entrypoint.sh"]
EXPOSE $PORT
ENTRYPOINT ["./docker_entrypoint.sh"]
