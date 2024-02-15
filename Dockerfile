FROM python:3.10-slim-bullseye

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# create root directory for our project in the container
RUN mkdir /app

WORKDIR /app

ADD . /app/

# Install any needed packages specified in requirements.txt
ADD requirements.txt /app/requirements.txt
RUN python manage.py migrates
RUN pip install --upgrade pip \
    && pip install --no-cache-dir -Ur /app/requirements.txt
