install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=main --cov=calCLI --cov=mylib test_*.pytest

format:
	#black *.py mylib/*.py

lint:
	#pylint --disable=R,C *.py
	
container-lint:
	docker run --rm -i hadolint/hadolint < Dockerfile

refactor: format lint

deploy:
	#deploy goes here

all: install lint test format deploy
