docker-push:
	docker build --tag=obraun/golang-microservices-ci:latest .
	docker push obraun/golang-microservices-ci:latest