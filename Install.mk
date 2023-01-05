SHELL := /bin/bash
THIS_FILE := $(lastword $(MAKEFILE_LIST))
include .env
# include MakeFile
.DEFAULT_GOAL := help
.PHONY: help

#* ================================================================================================================================================================================================================================================
#?					      $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$	     Gal Moshkovitz Make File	     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
#* ================================================================================================================================================================================================================================================
#*

#* ================================================================================================================================================================================================================================================
#?											  Make - Make Actions
#* ================================================================================================================================================================================================================================================
help:
	@echo "Make File List: $(MAKEFILE_LIST)"


print: $(wildcard *.txt)
	echo  $?
# .PHONY: make.list.targets
# make.list.tagets: ## List All Make File Tagets
# 	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'



# all: clouds


#* ================================================================================================================================================================================================================================================
#?											  Cloud CLI Installation
#* ================================================================================================================================================================================================================================================

THIS_FILE := $(lastword $(MAKEFILE_LIST))
clouds: azcli awscli gcloud;
	$(info Target Name:	$@)
	$(info $(THIS_FILE))
# clouds: testcli; $(info Target Name:	$@)
# 	$(info Target Name:	$@)
	

# clouds: azcli
testcli:
	@echo "Test"
# 	$(info Target Name:	$@)
# 	$(info Action:	Checking if Azure CLI Installed.....)
# 	@printf "\nChecking if Azure CLI Installed......\n"
# 	$(shell which az)
# 	# @if [ "$(shell which poetry)" = "" ]; then \
# 	# 	echo 1; \
# 	# @fi		


azcli awscli gcloud:
	$(info Target Name:	$@)
	$(info Action:	Checking if $@ Installed.....)


# azcli:
# 	@printf "\nChecking if Azure CLI Installed......\n"
# 	@if [ "$(shell which az)" = "" ]; then \
# 		@printf "Azure CLI Not Found\n"
# 		@printf "\nInstalling Azure CLI......\n"
# 	@else
# 		@printf "\nAzure CLI Installed......\n"
# awscli:
# 	@printf "\nChecking if AWS CLI Installed......\n"
# 	@if [ "$(shell which awscli)" = "" ]; then \
# 		@printf "AWS CLI Not Found\n"
# 		@printf "\nInstalling AWS CLI......\n"
# 	@else
# 		@printf "\AWS CLI Installed......\n"	
# gcloud:
# 	@printf "\nChecking if Gcloud CLI Installed......\n"
# 	@if [ "$(shell which gcloud)" = "" ]; then \
# 		@printf "Gcloud CLI Not Found\n"
# 		@printf "\nInstalling Gcloud CLI......\n"
# 	@else
# 		@printf "\Gcloud CLI Installed......\n"	



