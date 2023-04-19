sudo docker run -d \
	--hostname skynet-uptime-kuma \
	--name uptime-kuma \
	--restart=always \
	-p 3001:3001 \
	-v uptime-kuma:/app/data \
	-v /var/run/docker.sock:/var/run/docker.sock:ro \
	-e DOCKER_MODS=ghcr.io/gilbn/theme.park:uptime-kuma \
	-e TP_THEME=hotline \
	louislam/uptime-kuma:latest
