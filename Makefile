.PHONY: help up down start logs install

help:
	@grep -E '^[a-zA-Z-]+:.*?## .*$$' Makefile | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "[32m%-15s[0m %s\n", $$1, $$2}'

up: ## Turn on the docker environment
	docker-compose up -d

down: ## Turn off the docker environment
	docker-compose down

start:
	docker exec product_server npm run start

logs: ## see logs in wishlist_server
	docker logs -f product_server

install:
	bash scripts/install.sh