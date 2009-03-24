# Make help: http://www.gnu.org/software/make/manual/html_node/Phony-Targets.html#Phony-Targets

# beautify .h .m and .pch files
# requires http://bcpp.darwinports.com/
# see also http://blog.neontology.com/posts/2007/01/05/beautiful-c-in-textmate
BCPP_OPTS="-bcl -t -tbcl -f 2 -nbbi -i 4"

.PHONY: indent

indent:	
	@for f in `find . -name "*.h" -or -name "*.m" -or -name ".pch"` ; do \
	 bcpp $$BCPP_OPTS $$f $$f-tmp && mv $$f-tmp $$f ; \
	done
