sudo docker run \
	--detach \
	--name=sonarr \
	--hostname=skynet-sonarr \
	--restart=unless-stopped \
	--net=PiracyNetwork \
	-p 8989:8989 \
	-e PUID=1000 \
	-e PGID=1000 \
	-e TZ=America/Sao_Paulo \
	-e DOCKER_MODS=ghcr.io/gilbn/theme.park:sonarr \
	-e TP_THEME=hotline \
	-v /home/skynet/media/config/sonarr:/config \
	-v /mnt/usbhdd/media/data:/data \
	lscr.io/linuxserver/sonarr:latest
