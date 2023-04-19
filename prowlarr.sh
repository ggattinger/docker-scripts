sudo docker run \
	--detach \
	--name=prowlarr \
	--restart=unless-stopped \
	--hostname=skynet-prowlarr \
	--net=PiracyNetwork \
	-p 9696:9696 \
	-e PUID=1000 \
	-e PGID=1000 \
	-e TZ=America/Sao_Paulo \
	-e DOCKER_MODS=ghcr.io/gilbn/theme.park:prowlarr \
        -e TP_THEME=hotline \
	-v /home/skynet/media/config/prowlarr:/config \
	lscr.io/linuxserver/prowlarr:latest
