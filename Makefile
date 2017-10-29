.PHONY: install-gui env

SWIPL=$(shell which swipl)

install-gui:
	$(SWIPL) -g "pack_install(plgi)" -g "pack_install(plcairo)" -g halt

env: install-gui
