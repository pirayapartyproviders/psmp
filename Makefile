start:
	docker-compose up -d

update:
	docker pull itzg/minecraft-server

stop:
	docker exec psmp rcon-cli save-all
	sleep 3
	docker exec psmp rcon-cli stop
	docker-compose down

restart:
	docker exec psmp rcon-cli save-all
	sleep 3
	docker exec psmp rcon-cli stop
	docker-compose down
	docker-compose up -d

rcon:
	docker exec -i psmp rcon-cli
