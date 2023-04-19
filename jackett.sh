sudo docker run \
	--detach \
	--name=jackett \
	--hostname=skynet-jackett \
	--restart=unless-stopped \
	--net=PiracyNetwork \
	-p 9117:9117 \
	-e PUID=1000 \
        -e PGID=1000 \
        -e TZ=America/Sao_Paulo \
	-e DOCKER_MODS=ghcr.io/gilbn/theme.park:jackett \
        -e TP_THEME=hotline \
	-v /home/skynet/media/config:/config \
	-v /home/skynet/media/data/jackett:/data \
	lscr.io/linuxserver/jackett:latest
