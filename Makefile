.PHONY: build help

APP_NAME ?= `pwd | xargs basename`

default: help

help: ## Show this help message
	@echo "$(APP_NAME)"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build: ## Build the image
	@docker build -t $(APP_NAME):latest .

run: ## Start the container
	@docker run --rm $(APP_NAME):latest

it: ## Start the container interactively in bash
	@docker run --rm -it --entrypoint /bin/bash $(APP_NAME):latest

up: ## Rebuild the image and start the container
	make build && make run
