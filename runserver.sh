#!/bin/bash

python manage.py createsuperuser --noinput
gunicorn --bind 0.0.0.0:8000 core.wsgi
