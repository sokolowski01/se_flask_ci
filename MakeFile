.PHONY: deps lint test run docker_build docker_push

deps:
\tpip install -r requirements.txt

lint:
\tflake8 .

test:
\tpytest

run:
\tpython app.py

docker_build:
\tdocker build -t sokolowski01/se_flask_ci:latest .

docker_push:
\tdocker push sokolowski01/se_flask_ci:latest
