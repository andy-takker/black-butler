PYTHON_VERSION ?= 3.12

develop: clean_dev ##@Develop Create virtualenv
	python$(PYTHON_VERSION) -m venv .venv
	.venv/bin/pip install -U pip poetry
	.venv/bin/poetry config virtualenvs.create false
	.venv/bin/poetry install


clean_dev:  ##@Develop Remove virtualenv
	rm -rf .venv
