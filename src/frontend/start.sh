#!/bin/bash

gunicorn -b :$PORT --threads 4 --log-level=info flask_server:APP &
stress --vm 2 --vm-bytes 256M --timeout 3600