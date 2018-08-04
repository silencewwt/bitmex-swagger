CLI = /usr/local/bin/swagger-codegen
URL = https://www.bitmex.com/api/explorer/swagger.json

generate:
	$(CLI) generate -i $(URL) -l python -c config.json

doc:
	$(CLI) generate -i $(URL) -l dynamic-html -o docs/dynamic-html

push:
	sh ./git_push.sh silencewwt bitmex-swagger update

build: generate doc push
