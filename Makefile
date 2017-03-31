PYTHON=python2.7

# targets that aren't filenames
.PHONY: all clean deploy

all: _site/index.html

BUILDARGS :=
_site/index.html: $(wildcard *.html) _config.yml _layouts/default.html
	jekyll build --config _config.yml $(BUILDARGS)

clean:
	$(RM) -r _site

# CSEHOST := bicycle.cs.washington.edu
# RSYNCARGS := --compress --recursive --checksum --itemize-changes \
# 	--delete -e ssh --perms --chmod=ug+rw

# rsync:
# 	rsync $(RSYNCARGS) _site/ $(CSEHOST):/cse/www2/sampa/new

# deploy: clean all rsync
