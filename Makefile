.PHONY: build
build:
	@deno bundle -c tsconfig.json src/index.ts > pkg/index.js

.PHONY: pack
pack: build
	@zip -j -x='pkg/.gitkeep' deno-webextension-template.zip pkg/*
