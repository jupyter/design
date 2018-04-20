FILE:="example.md"

build:
	mkdir -p docs/theme/
	reveal-md example.md --static docs
	cp theme/*.css docs/theme/
watch: build
	reveal-md -w example.md

