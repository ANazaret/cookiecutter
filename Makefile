BAKE_OPTIONS=--no-input

bake: ## Run cookiecutter with default arguments.
	@echo "🚀 Running cookiecutter with default arguments."
	@cookiecutter --no-input . --overwrite-if-exists

.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help