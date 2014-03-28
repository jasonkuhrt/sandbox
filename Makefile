dev: build
	serve

build: components index.js
	@component build --dev --use component-autoboot

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

.PHONY: clean
