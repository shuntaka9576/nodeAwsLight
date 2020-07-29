IMAGE_NAME=hozi894/nodeawslight:latest

build:
	docker image build . -t ${IMAGE_NAME}
run: build
	docker run -it ${IMAGE_NAME}
push: build
	docker push ${IMAGE_NAME}
start:
	docker run -itd ${IMAGE_NAME}
exec:
	docker exec -it ${IMAGE_NAME} /bin/sh
