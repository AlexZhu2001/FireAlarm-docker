FROM python:3.11-slim

RUN mkdir -pv /root/server
WORKDIR /root/server
COPY ./FireAlarm-server /root/server
RUN python -m pip install -r /root/server/requirements.txt
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]




