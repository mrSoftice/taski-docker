#!/bin/sh

echo "Starting backend..."

python manage.py migrate 

gunicorn --bind 0:8000 backend.wsgi

