dev: build
	serve

build: html components index.js
	@component build --dev --use component-autoboot

components: component.json
	@component install --dev

html: index.jade
	jade .

clean:
	rm -fr build components template.js

.PHONY: clean
