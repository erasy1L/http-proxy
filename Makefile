build:
	docker build -t simple-http-proxy .

up:
	docker compose up -d

down:
	docker compose down

restard: down up	

.PHONY: build up down restart