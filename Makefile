IMAGE_NAME=fazool-proxy
STABLE_TAG=0.1.0
UNIQUE_TAG=${STABLE_TAG}-${shell date "+%Y.%m.%d"}-${shell git rev-parse --short HEAD}

build:
	docker build \
	-t ${IMAGE_NAME}:${STABLE_TAG} \
	-t ${IMAGE_NAME}:${UNIQUE_TAG} \
	.

run:
	docker run --rm \
	-p 80:80 \
	${IMAGE_NAME}:${UNIQUE_TAG}