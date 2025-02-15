include .env

.ONESHELL:

N_SPARK_WORKERS ?=

up:
	@echo "Creating infrastructure...";
	docker compose up -d;

up-n-workers:
	@echo "Creating infrastructure with $(N_SPARK_WORKERS) spark workers...";
	docker compose up -d --scale spark-worker=$(N_SPARK_WORKERS);

stop:
	@echo "Stopping infrastructure...";
	docker compose stop;

down:
	@echo "Deleting infrastructure...";
	docker compose down;

down-volumes:
	@echo "Deleting infrastructure and volumes...";
	docker compose down -v;