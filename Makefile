serve:
	@echo "Starting Hugo server..."
	@cd ./hugo && hugo serve --disableFastRender --baseURL https://${CODESPACE_NAME}-1313.app.github.dev --appendPort=false

build:
	@echo "Building Hugo site..."
	@cd ./hugo && hugo
