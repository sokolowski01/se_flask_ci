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

docker_run: docker_build
docker run \
	--name hello-world-printer-dev \
	-p 5000:5000 \
	-d hello-world-printer
