#!/bin/bash

echo "Collect static files..."
docker compose -f docker-compose.production.yml exec backend python manage.py collectstatic

echo "Copy them to volume..."
docker compose -f docker-compose.production.yml exec backend sh -c "cp -r /app/collected_static/. /backend_static/static/"

