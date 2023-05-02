include docker.mk

.PHONY: test

DRUPAL_VER ?= $(DRUPAL_VERSION)
PHP_VER ?= $(PHP_MAKEFILE)

test:
	cd ./tests/$(DRUPAL_VER) && PHP_VER=$(PHP_VER) ./run.sh
