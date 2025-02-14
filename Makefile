include .env

.ONESHELL:

up:
	@echo "Creating infrastructure..."
	docker compose --env-file .env up -d

stop:
	@echo "Stopping infrastructure..."
	docker compose stop

down:
	@echo "Deleting infrastructure..."
	docker compose --env-file .env down

down-volumes:
	@echo "Deleting infrastructure and volumes..."
	docker compose --env-file .env down -v