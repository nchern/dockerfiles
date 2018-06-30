
NAME=veracrypt
TAG=latest

IMAGE_NAME=$(NAME):$(TAG)

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: show-alias
show-alias:
	@echo "alias veracrypt='$$(cat veracrypt.sh | sed s/\$$IMAGE_NAME/$(IMAGE_NAME)/g)'"
