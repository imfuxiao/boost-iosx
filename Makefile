mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(dir $(mkfile_path))

.PHONY: build clean

build:
	cd ${mkfile_dir} && scripts/build.sh

clean:
	cd ${mkfile_dir} && rm -rf *.tar.xz boost frameworks frameworks.built.libs frameworks.built.platforms
