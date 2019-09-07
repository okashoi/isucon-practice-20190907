
gogo:
	./deploy.sh


# 開発用
.PHONY: up down
up:
	docker-compose up -d --build

down:
	docker-compose down
