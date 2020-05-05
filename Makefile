WEB_REPOSITORY := https://github.com/colapp-code/microservice-sample-web
USER_REPOSITORY := https://github.com/colapp-code/microservice-sample-user
TWEET_REPOSITORY := https://github.com/colapp-code/microservice-sample-tweet

clone:
		git clone $(WEB_REPOSITORY) ./services/microservice-sample-web
		git clone $(USER_REPOSITORY) ./services/microservice-sample-user
		git clone $(TWEET_REPOSITORY) ./services/microservice-sample-tweet

pull:
		cd ./services/microservice-sample-web && git pull
		cd ./services/microservice-sample-user && git pull
		cd ./services/microservice-sample-tweet && git pull

build:
		docker-compose build

up:
		docker-compose up -d

down:
		docker-compose down

seed:
		docker-compose exec user node /app/scripts/initialize.js
		docker-compose exec tweet node /app/scripts/initialize.js