deps:
	pip install -r requirements.txt

lint:
	flake8 main.py

run:
	python main.py

test:
	python -m unittest discover tests

docker_build:
	docker build -t hello-world-printer .

docker_run: docker_build
	docker run \
		--name hello-world-printer-dev \
		-p 5000:5000 \
		-d hello-world-printer

build_and_push:
	docker build -t sokolowski01/se_flask_ci:latest .
	docker push sokolowski01/se_flask_ci:latest