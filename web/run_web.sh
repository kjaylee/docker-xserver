#!/bin/sh

# wait for PSQL server to start
sleep 5

# prepare init migration
su -m xuser -c "python manage.py makemigrations"  
# migrate db, so we have the latest db schema
su -m xuser -c "python manage.py migrate"  

su -m xuser -c "python manage.py collectstatic  --noinput"
# start development server on public ip interface, on port 8000
su -m xuser -c "python manage.py runserver 0.0.0.0:8000"  

#cd docker_django  
# su -m xuser -c "/usr/local/bin/gunicorn docker_django.wsgi:application -w 2 -b :8000 --reload"