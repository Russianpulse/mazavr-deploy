test:
	docker-compose -f docker-compose.test.yml up test

run:
	docker-compose pull
	docker-compose up -d
