TAG ?= 0.3.2

build-requirements:
	pip-compile -o requirements.txt pyproject.toml

build-requirements-dev:
	pip-compile --extra tests -o requirements-dev.txt pyproject.toml

requirements:
	pip-sync requirements.txt requirements-dev.txt

requirements-dev:
	python -m pip install -r requirements-dev.txt

gen: gen-python

gen-python:
	python3 -m grpc_tools.protoc -I proto --pyi_out=src/. --python_out=src/. --grpc_python_out=src/. proto/leapfrogai/**/*.proto

test:
	python3 -m pytest -v