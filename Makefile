TEMPLATE_NAME ?= janus-webrtc-gateway-docker

build:
	@docker build -t yanhao/$(TEMPLATE_NAME) .

build-nocache:
	@docker build --no-cache -t yanhao/$(TEMPLATE_NAME) .

bash:
	@docker run --rm --net=host --name="janus" -it -t yanhao/$(TEMPLATE_NAME) /bin/bash

run:
	@docker run --rm --net=host --name="janus" -it -t yanhao/$(TEMPLATE_NAME)

login:
	@docker exec -it janus bash

run-mac:
	@docker run --rm -p 80:80 -p 8088:8088 -p 8188:8188 --name="janus" -it -t yanhao/$(TEMPLATE_NAME)

run-hide:
	@docker run --rm --net=host --name="janus" -it -t yanhao/$(TEMPLATE_NAME) >> /dev/null
