IMAGE_NAME := python-template
CONTAINER_NAME := python-template

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -it --rm -v ${PWD}:/workspace --name $(CONTAINER_NAME) $(IMAGE_NAME) bash

.PHONY: build run
