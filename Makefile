.PHONY: install
install: build
	pip install -e .

.PHONY: build
build:
	coconut setup.coco -s
	coconut pyprover -s -j sys

.PHONY: setup
setup:
	pip install coconut-develop[tests]

.PHONY: test
test:
	python pyprover/tests.py

clean:
	find . -name "*.py" -delete
	find . -name '*.pyc' -delete
	find . -name '__pycache__' -delete
