BASEDIR = $(CURDIR)
BUILDDIR = $(BASEDIR)/build
WPURL = "https://fragwirecms.herokuapp.com"

.PHONY: all
all: html

.PHONY: html
html: | $(BUILDDIR)
	wget --mirror -p --html-extension --convert-links -e robots=off -P $(BUILDDIR) $(WPURL)

.PHONY: clean
clean:
	@rm -rf $(BUILDDIR)

.PHONY: help
help:
	@echo "Makefile for publishing Fragwire website			"
	@echo "													"
	@echo "Usage:											"
	@echo "		make html		(Re)generate the web site	"
	@echo "		make clean		Remove the generated files	"

$(BUILDDIR):
	@mkdir -p $@

