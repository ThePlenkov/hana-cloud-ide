.PHONY: login

login:
	@target_output=$$(cf target 2>&1); \
	if [ $$? -eq 0 ]; then \
		echo "Already logged in..\n"; \
		[ "$$target_output" != "" ] || true; \
		echo "$$target_output"; \
	else \
		echo "Logging in to Cloud Foundry..."; \
		cf login --sso; \
	fi
