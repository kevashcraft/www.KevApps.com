default: dev

bash:
	docker-compose -p www_kevapps_com_dev run www_kevapps_com bash

build:
	docker-compose -p www_kevapps_com_dev build

build-no-cache:
	docker-compose -p www_kevapps_com_dev build --no-cache

dev: down build
	docker-compose -p www_kevapps_com_dev up


down:
	docker-compose -p www_kevapps_com_dev down -v

prod_build:
	docker build -f Dockerfile.prod -t kevashcraft/www-kevapps-com:latest .

prod_push:
	docker push kevashcraft/www-kevapps-com:latest

upgrade: prod_build prod_push
	helm upgrade www-kevapps-com ./helm/ --recreate-pods

nc: build-no-cache
ncb: build-no-cache bash
ncd: build-no-cache dev
