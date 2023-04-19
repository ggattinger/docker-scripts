sudo docker run \
	--detach \
	--name=mylar3 \
	--hostname=skynet-mylar3 \
	--restart unless-stopped \
	--network=PiracyNetwork \
	-p 8092:8090 \
	-e PUID=1000 \
	-e PGID=1000 \
	-e TZ=America/Sao_Paulo \
	-e DOCKER_MODS=ghcr.io/gilbn/theme.park:prowlarr \
        -e TP_THEME=hotline \
	-v /home/skynet/media/config/mylar:/config \
	-v /home/skynet/media/data/media/comics:/comics \
	-v /home/skynet/media/data/media/downloads:/downloads \
  	lscr.io/linuxserver/mylar3:latest
