FROM python:3.7-alpine

WORKDIR /code

ENV FLASK_APP app.py

ENV FLASK_RUN_HOST 172.31.1.252

RUN apk add --no-cache gcc musl-dev linux-headers

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD ["flask", "run"]
