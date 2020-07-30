# Retrieve MAX_INSTANCES env variable value or default to 4
MAX_INSTANCES ?= 4

install:
	yarn install

generateCapabilities:
	yarn writeCapabilitesToFile

maxInstances:
ifndef SELENIUM
	$(eval MAX_INSTANCES := $(shell node ./scripts/getMaxInstances $(MAX_INSTANCES)))
endif

sliceFeatures:
ifndef NO_SLICES
	yarn sliceFeatures
endif

run-on-demand: install
	yarn test:ui-on-demand
