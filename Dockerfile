FROM debian:11
FROM python:3.10.1-slim-buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install git
RUN python3.9 -m pip install -U pip

COPY requirements.txt .

RUN pip3 install wheel
RUN pip3 install --no-cache-dir -U -r requirements.txt

CMD ["python3.9", "-m", "waifugram"]
