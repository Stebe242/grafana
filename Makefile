BASEIMAGE=ubuntu:24.04
VENV_NAME?=.venv

build:
	docker build --build-arg TARGETPLATFORM=linux/amd64 --build-arg BASEIMAGE=$(BASEIMAGE) .

buildx:
	docker buildx build --progress plain --platform linux/amd64,linux/arm64,linux/arm/v7 --build-arg BASEIMAGE=$(BASEIMAGE) --push -t Stebe242/grafana:multiarch .
