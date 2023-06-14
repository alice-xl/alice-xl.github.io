ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
hugo-shell:
	docker run --rm -it \
  	-v $(ROOT_DIR):/src \
 	klakegg/hugo:0.101.0-alpine \
  	shell

hugo-server:
	docker run --rm -it \
  	-v $(ROOT_DIR):/src \
 	-p 1313:1313 \
 	klakegg/hugo:0.101.0 \
  	server