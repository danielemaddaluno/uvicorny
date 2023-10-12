FROM python:3.8-slim

WORKDIR /app/
ADD requirements.txt /app/

RUN pip install -r requirements.txt

ADD . /app/

EXPOSE 8005

CMD ["uvicorn", "app.main:app", "--host=0.0.0.0", "--port=80"]