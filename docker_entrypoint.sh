#!/bin/sh
echo Starting Gunicorn.
echo "Listening on Port:" $PORT
exec gunicorn -w 3 main:app -b 0.0.0.0:$PORT --log-level=INFO
