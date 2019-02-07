# The Makefile defines all builds/tests steps

# we run outside the CI. include .env file
include .env

# compose command to merge production file and and dev/tools overrides
COMPOSE?=docker-compose -f docker-compose.yml 

up:
	# run compose in background
	$(COMPOSE) up -d

dev:
	# run compose in foreground
	$(COMPOSE) up

down:
	# stop compose
	#$(COMPOSE) down --remove-orphans
	$(COMPOSE) down

clean:
	# clean local folders
	rm -Rf grafana-storage influxdb-data
	# remove docker stuff
	$(COMPOSE) rm --stop --force
	# clean docker volumes
	docker volume prune -f || true
	# clean docker networks
	docker network prune -f || true
