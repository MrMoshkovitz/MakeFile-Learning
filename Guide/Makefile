SHELL := /bin/bash
THIS_FILE := $(lastword $(MAKEFILE_LIST))
# include .env
.DEFAULT_GOAL := help
.PHONY: help
# https://makefiletutorial.com/
# https://www.gnu.org/software/make/manual/make.html
# https://www.gnu.org/software/make/manual/make.html#Options-Summary
# https://www.gnu.org/software/make/manual/make.html#Quick-Reference
# https://www.gnu.org/software/make/manual/make.html#Quick-Reference
# https://www.gnu.org/software/make/manual/make.html#Features
# https://www.gnu.org/software/make/manual/make.html#Special-Variables
#* ================================================================================================================================================================================================================================================
#?											  Syntax
#* ================================================================================================================================================================================================================================================
VPATH = src:../
this_file: 
	@echo "This File $(THIS_FILE)"
	@echo "This Folder: $(@D)"
	@echo "This Target: $(@F)"
	@echo "This Folder: $(*D)"
	@echo "This Target: $(*F)"
	$(MAKE) help -f Install.mk


targets: prerequisites
	command
	command
	command
#?											  Variables
#* ================================================================================================================================================================================================================================================
files := file1 file2
a := one two # a is assigned to the string "one two"

some_file: $(files)
	echo "Look at this variable: " $(files)
	touch some_file

file1:
	touch file1
file2:
	touch file2

clean:
	rm -f file1 file2 some_file


test_vars: test_var1 test_var2
test_var1:
	$(info Target Name:	$@)
	$(info Var Name:	${TEST_VAR1})
	@echo ""

test_var2:
	$(info Target Name:	$@)
	$(info Var Name:	${TEST_VAR2})
	@echo ""

hello:
	echo "Hello, World"
	@echo $(a)
	@echo ${a}

#?											 Multiple Targets
#* ================================================================================================================================================================================================================================================
f: f1 f2
f1 f2:
	$(info Target Name:	$@)
	@echo $@

#?											 Auto Variables and WildCards
#* ================================================================================================================================================================================================================================================
#* Print out file information about every txt file
print_txt: $(wildcard *.txt)
	ls -la $?

target: target_name target_new_req target_all_req
	@echo "Target Name: $@"
	@echo "Target Newer Req: " $?
	@echo "Taget All Req: $^"
#* Outputs "target_name", since this is the target name
target_name:
	@echo "Target Name: $@"
	@echo "Target Newer Req: " $?
	@echo "Taget All Req: $^"

#* Outputs all prerequisites newer than the target
target_new_req:
	@echo "Target Name: $@"
	@echo "Target Newer Req: " $?
	@echo "Taget All Req: $^"

#* Outputs all prerequisites
target_all_req:
	@echo "Target Name: $@"
	@echo "Target Newer Req: " $?
	@echo "Taget All Req: $^"


#?											 Command Execution
#* ================================================================================================================================================================================================================================================
#? Use @ to Silent The Command
#? Each command is run in a new shell use ; or ; \ for multiple commands
#? Double dollar sign - If you want a string to have a dollar sign, you can use $$. This is how to use a shell variable in bash or s
cmdExec: 
	cd ..
	#* The cd above does not affect this line, because each command is effectively run in a new shell
	echo `pwd`

	#* This cd command affects the next because they are on the same line
	cd ..;echo `pwd`

	#* Same as above
	cd ..; \
	echo `pwd`

make_var = I am a make variable
doubleDolar:
	#* Same as running "sh_var='I am a shell variable'; echo $sh_var" in the shell
	sh_var='I am a shell variable'; @echo $$sh_var

	#* Same as running "echo I am a Make variable" in the shell
	@echo $(make_var)




#!											 Error Handeling
#* ================================================================================================================================================================================================================================================
#? Error handling with -k, -i, and -
#? Add -k when running make to continue running even in the face of errors. Helpful if you want to see all the errors of Make at once.
#? Add a - before a command to suppress the error
#? Add -i to make to have this happen for every command.

errors: err_one err_two err_three

err_one:
	#* This error will be printed, and make will continue to run
	-k false
	touch one
err_two:
	#* This error will be printed but ignored, and make will continue to run
	-false
	touch one
err_three:
	#* This error will be printed but ignored, and make will continue to run
	-ifalse
	touch one




#!											 Run Different Make file from Different Folder
#* ================================================================================================================================================================================================================================================
#? -f Specify FIle Name
#? -s Silent Make File Logs 
run_make:
	@cd ..; \
	$(MAKE) -s clouds -f Install.mk

SUBDIRS = foo bar baz
subdirs:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir; \
	done