.PHONY: run down logs build test clean

run:
	docker compose up --build

down:
	docker compose down

logs:
	docker compose logs -f app

build:
	docker compose build

test:
	mvn test

clean:
	docker compose down -v --remove-orphans
	mvn clean