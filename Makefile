image := malicious
container := malicious-container
host_port := 10030
guest_port := 80

all: build

build: Dockerfile
	docker build -t $(image) .

run: build
	docker run -p $(host_port):$(guest_port) -d --name $(container) $(image)

debug: build
	docker run -p $(host_port):$(guest_port) --rm --name $(container) -it $(image) bash

stop:
	docker rm -f $(container)

show:
	docker ps -a

clean:
	docker rmi -f $(image)

.PHONY: serve debug stop show clean
