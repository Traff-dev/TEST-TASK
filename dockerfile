# version 
 FROM python:3.8

WORKDIR /src

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY src/ .
CMD 
CMD [ "gunicorn", "--bind 0.0.0.0:5000 wsgi:app" ]