IMAGE_NAME=event-frontend
CONTAINER_NAME=event-frontend
PORT?=80

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run --rm -d -p $(PORT):80 --name $(CONTAINER_NAME) $(IMAGE_NAME)

stop:
	docker stop $(CONTAINER_NAME)

logs:
	docker logs -f $(CONTAINER_NAME)
