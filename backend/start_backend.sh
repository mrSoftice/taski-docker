#!/bin/sh

echo "Starting taski backend..."

python manage.py migrate

# Collect static files
# автоматом статику будем собирать в докере
# python manage.py collectstatic --no-input
# cp -r /app/collected_static/. /backend_static/static/

gunicorn -w 4 -t 600 --bind 0:8000 backend.wsgi
