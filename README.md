# LeapfrogAI SDK

## Description

Home of the [PyPI LeapfrogAI SDK](https://pypi.org/project/leapfrogai/).

## Testing

``` shell
make requirements-dev
python3 -m pip install -e .
make test
```

## Building `leapfrogai` and updating PyPi

First change the version in `pyproject.toml`

``` shell
python3 -m pip install --upgrade build hatchling twine
python3 -m build
python3 -m twine upload dist/*
```
