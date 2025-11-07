#!/bin/sh

echo "Starting taski backend..."

python manage.py migrate

# Collect static files
python manage.py collectstatic --no-input
cp -r /app/collected_static/. /backend_static/static/

gunicorn --bind 0:8000 backend.wsgi
