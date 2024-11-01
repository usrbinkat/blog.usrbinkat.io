serve: build
	@echo "Starting Hugo server..."
	@cd ./hugo && hugo serve -logLevel=debug --disableFastRender --baseURL https://${CODESPACE_NAME}-1313.app.github.dev --appendPort=false

build:
	@echo "Building Hugo site..."
	@cd ./hugo && npx update-browserslist-db@latest
	@cd ./hugo && hugo --logLevel=debug --minify --baseURL https://blog.usrbinkat.io --ignoreVendorPaths "themes"
