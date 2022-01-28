FROM alpine:3.15.0

RUN apk update && apk add python3 && apk add py3-pip

WORKDIR /app

COPY pacakges.txt /app/pacakges.txt 

RUN pip3 install -r pacakges.txt

COPY * /app/

EXPOSE 8000

CMD [ "uvicorn", "api:api", "--reload", "--host", "0.0.0.0", "--port", "8000" ]
