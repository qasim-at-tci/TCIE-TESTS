#!/usr/bin/env make

POETRY_VERSION   ?= 1.6.1
VENV_DIRECTORY   ?= .venv
POETRY_OPTS      ?=

.PHONY: setup
setup:
	@pip install --disable-pip-version-check poetry==$(POETRY_VERSION)
	@poetry config virtualenvs.create true # Just to ensure to do not block the developer workspace
	@poetry config virtualenvs.in-project true
	@poetry install $(POETRY_OPTS)
