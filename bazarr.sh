sudo docker run \
	--detach \
	--name=bazarr \
	--hostname=skynet-bazarr \
	--restart=unless-stopped \
	--net=PiracyNetwork \
	-p 6767:6767 \
	-e PUID=1000 \
        -e PGID=1000 \
        -e TZ=America/Sao_Paulo \
	-e DOCKER_MODS=ghcr.io/gilbn/theme.park:radarr \
	-e TP_THEME=hotline \
	-v /home/skynet/media/config/radarr:/config \
	-v /mnt/usbhdd/media/data:/data \
	lscr.io/linuxserver/bazarr:latest
