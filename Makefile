test:
	docker-compose -f docker-compose.yml -f docker-compose.test.yml pull
	docker-compose -f docker-compose.yml -f docker-compose.test.yml run web rake db:create db:migrate
	docker-compose -f docker-compose.yml -f docker-compose.test.yml run web rspec

run:
	docker-compose pull
	docker-compose run web rake db:create db:migrate
	docker-compose up -d
