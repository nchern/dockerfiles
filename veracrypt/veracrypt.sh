docker run -ti --rm --privileged --cap-add ALL -v /lib/modules:/lib/modules:ro -v $(pwd):/root/shared $IMAGE_NAME
