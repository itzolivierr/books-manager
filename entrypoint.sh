#!/bin/bash

# Wait for the database to be ready
python manage.py wait_for_db

# Apply database migrations
python manage.py migrate

# Create superuser
echo "from django.contrib.auth.models import User; User.objects.create_superuser('${DJANGO_SUPERUSER_USERNAME}', '${DJANGO_SUPERUSER_EMAIL}', '${DJANGO_SUPERUSER_PASSWORD}') if not User.objects.filter(username='${DJANGO_SUPERUSER_USERNAME}').exists() else None" | python manage.py shell

# Seed database with books
python manage.py seed_books

# Start the Django application
exec "$@"