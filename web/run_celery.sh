#!/bin/sh

# wait for RabbitMQ server to start
sleep 5

# run Celery worker for our project myproject with Celery configuration stored in Celeryconf
su -m xuser -c "celery worker -A docker_django.celeryconf -Q default -n default@%h"  