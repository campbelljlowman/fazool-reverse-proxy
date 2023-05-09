REGISTRY=ghcr.io
IMAGE_NAME=campbelljlowman/fazool-reverse-proxy
STABLE_VERSION=0.1.0
UNIQUE_VERSION=${STABLE_VERSION}-${shell date "+%Y.%m.%d"}-${shell git rev-parse --short HEAD}
STABLE_IMAGE_TAG=${REGISTRY}/${IMAGE_NAME}:${STABLE_VERSION}
UNIQUE_IMAGE_TAG=${REGISTRY}/${IMAGE_NAME}:${UNIQUE_VERSION}

build:
	docker build \
	-t ${STABLE_IMAGE_TAG} \
	-t ${UNIQUE_IMAGE_TAG} \
	.

run:
	docker run --rm \
	-p 80:80 \
	${IMAGE_NAME}:${UNIQUE_TAG}


publish:
	echo ${GITHUB_ACCESS_TOKEN} | docker login ghcr.io -u campbelljlowman --password-stdin
	docker push ${STABLE_IMAGE_TAG}
	docker push ${UNIQUE_IMAGE_TAG}
	docker logout
