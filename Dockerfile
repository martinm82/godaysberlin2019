FROM golang:1.10.8-alpine3.7 

RUN apk update && apk add bash nodejs python3 py3-pip
COPY requirements.txt /
RUN pip3 install --upgrade pip && \
    pip3 install -r /requirements.txt
WORKDIR /app
 
