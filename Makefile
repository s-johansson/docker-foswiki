IMAGE_NAME := sjohansson/docker-foswiki
TAG := drawio_0.1
 
docker-build: 
	docker build --rm --network host --tag $(IMAGE_NAME):${TAG} -f Dockerfile .

docker-run: docker-build
	docker run -idt --rm --network host --name foswiki ${IMAGE_NAME}:${TAG}

docker-run-bash: docker-build
	docker run -it --rm --network host --name foswiki ${IMAGE_NAME}:${TAG} /bin/bash

