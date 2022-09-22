VERSION :=`/bin/cat VERSION`

docker-build: 
	podman build  --tag="fils/jena:$(VERSION)"  --file=./Dockerfile .

docker-push: 
	podman tag  fils/jena:$(VERSION) docker.io/fils/jena:$(VERSION)
	podman push  docker.io/fils/jena:$(VERSION)

