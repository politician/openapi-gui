SHELL=/bin/bash

build:
	docker build -t mermade/openapi-gui .

start: build
	docker run --name openapi-gui -p 3000:3000 -d mermade/openapi-gui

stop:
	docker stop openapi-gui
	docker rm openapi-gui

.PHONY: build start stop
