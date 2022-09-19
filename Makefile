.EXPORT_ALL_VARIABLES:
REGISTRY=docker.io
PROJECT=nuxion

build-jupyter-minimal:
	ROOT=nvidia/cuda:11.5.1-runtime-ubuntu20.04
	docker build -t ${PROJECT}/minimal-jupyter-gpu:${TAG} -f jupyter-minimal-gpu/Dockerfile --build-arg ROOT_CONTAINER=${ROOT} jupyter-minimal-gpu/
	docker tag -t ${PROJECT}/minimal-jupyter-gpu:${TAG} ${REGISTRY}/${PROJECT}/minimal-jupyter-gpu:${TAG}

publish-jupyter-minimal:
	docker push ${REGISTRY}/${PROJECT}/minimal-jupyter-gpu:${TAG}

