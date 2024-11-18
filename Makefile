.DEFAULT_GOAL := error

.PHONY: error
error:
	$(error remember to put "prod" or "dev" after "make".)
dev:
	docker compose -f docker-dev.yml up --build

prod:
	docker login ghcr.io
	docker compose -f docker-prod.yml up --build

ngrok:
	ngrok start --config ./ngrok.yml --all