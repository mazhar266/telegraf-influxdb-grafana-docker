# The Makefile defines all builds/tests steps

# we run outside the CI. include .env file
include .env

export GPU

ifeq ($(GPU),1)
	export COMPOSE:=docker-compose -f docker-compose.yml -f docker-compose-gpu.yml
endif

# compose command to merge production file and and dev/tools overrides
COMPOSE?=docker-compose -f docker-compose.yml

.env: 
	cp .env_dist .env

up: .env
	# run compose in background
	$(COMPOSE) up -d

dev: .env
	# run compose in foreground
	$(COMPOSE) up

down:
	# stop compose
	#$(COMPOSE) down --remove-orphans
	$(COMPOSE) down

logs:
	$(COMPOSE) logs --tail 50 -f

clean:
	# clean local folders
	rm -Rf influxdb-data
	# remove docker stuff
	$(COMPOSE) rm --stop --force
	# clean docker volumes
	docker volume prune -f || true
	# clean docker networks
	docker network prune -f || true
