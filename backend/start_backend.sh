#!/bin/sh

echo "Starting taski backend..."

python manage.py migrate 

gunicorn --bind 0:8000 backend.wsgi

