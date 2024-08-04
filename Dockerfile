FROM python:3.12-alpine

WORKDIR /app
COPY . /app

RUN apk add --no-cache python3-dev mariadb-dev build-base \
    && pip install --upgrade pip \
    && pip install -r requirements.txt

ENTRYPOINT ["python"]