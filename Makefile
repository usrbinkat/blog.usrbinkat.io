serve: build
	@echo "Starting Hugo server..."
	@cd ./hugo && hugo serve -logLevel=debug --disableFastRender --baseURL https://${CODESPACE_NAME}-1313.app.github.dev --appendPort=false

build:
	@echo "Building Hugo site..."
	@cd ./hugo && npx update-browserslist-db@latest
	@cd ./hugo && HUGO_IGNOREERRORS=true HUGO_LOG_LEVEL=debug hugo --minify --baseURL https://blog.usrbinkat.io --ignoreVendorPaths "themes" || (echo "Hugo build failed with error code $$?"; exit 1)
