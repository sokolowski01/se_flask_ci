deps:
	pip install -r requirements.txt

lint:
	flake8 app.py

run:
	python app.py

test:
	python -m unittest discover tests

docker_build:
	docker build -t sokolowski01/se_flask_ci:latest .

docker_push:
	docker push sokolowski01/se_flask_ci:latest
