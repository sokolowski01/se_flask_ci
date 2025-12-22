deps:
	pip install -r requirements.txt

lint:
	flake8 app.py

run:
	python app.py

test:
	python -m unittest discover tests

docker_build:
docker build -t hello-world-printer .
