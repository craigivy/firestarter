

.PHONY: install
install:
	@echo "Running: $@"
	@go install 


.PHONY: dockerize
dockerize:
	@echo "Running: $@"
	docker build -t firestarter -f Dockerfile .

.PHONY: drun
drun:
	docker run -v /var/run/docker.sock:/var/run/docker.sock --name firestarter firestarter

.PHONY: dremove
dremove:
	docker rm -f $$(docker ps -a -q)