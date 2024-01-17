HANA_SERVICE_INSTANCE := hana-dev

START_SERVICE_FILE := commands/startService.json
STOP_SERVICE_FILE := commands/stopService.json

update-service:
	cf update-service $(SERVICE_INSTANCE) -c '$(shell cat $(START_SERVICE_FILE))'

start_hana:
	# Add commands to start HANA here
	@echo "Starting HANA..."
	$(MAKE) update-service SERVICE_INSTANCE=$(HANA_SERVICE_INSTANCE) PARAMETERS_FILE=$(START_SERVICE_FILE)

stop_hana:
	# Add commands to stop HANA here
	@echo "Stopping HANA..."
	$(MAKE) update-service SERVICE_INSTANCE=$(HANA_SERVICE_INSTANCE) PARAMETERS_FILE=$(STOP_SERVICE_FILE)

