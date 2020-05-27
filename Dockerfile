FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade --no-cache-dir pip
RUN pip install -U flask
RUN pip install pyjwt
RUN pip install gunicorn
RUN pip install pytest


# ENTRYPOINT ["python", "main.py"]
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
