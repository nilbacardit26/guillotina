postgres:
	docker run -d -e POSTGRESQL_PASSWORD=postgres -e POSTGRESQL_DATABASE=data -e POSTGRESQL_USERNAME=postgres -p 5432:5432 bitnami/postgresql:latest

elastic:
	docker run -d -e "xpack.security.enabled=false" -e "discovery.type=single-node" -e "http.host=0.0.0.0" -e "transport.host=127.0.0.1" -p 9200:9200 elasticsearch:7.5.1

redis:
	docker run -d -e ALLOW_EMPTY_PASSWORD=yes -p 6379:6379 bitnami/redis:latest
