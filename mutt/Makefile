
NAME=mutt
TAG=latest

IMAGE_NAME=$(NAME):$(TAG)

.PHONY: docker-image
docker-image:
	@docker build -t $(IMAGE_NAME) .

.PHONY: show-alias
show-alias:
	@echo "alias mutt='docker run -it --rm $(IMAGE_NAME) neomutt'"
