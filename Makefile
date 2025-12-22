deps:
	pip install -r requirements.txt

lint:
	flake8 app.py

run:
	python app.py

test:
	# Tu wpisz komende do testow, jesli jej nie masz, mozna dac 'echo OK'
	python -m unittest discover tests
