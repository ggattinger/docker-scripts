sudo docker run \
	--detach \
	--name=qbittorrent \
	--hostname=skynet-qbittorrent \
	--restart=unless-stopped \
	--net=PiracyNetwork \
	-e WEBUI_PORT=8080 \
	-p 8090:8080 \
	-p 6881:6881 \
	-p 6881:6881/udp \
	-e PUID=1000 \
        -e PGID=1000 \
        -e TZ=America/Sao_Paulo \
	-v /home/skynet/media/config/qbittorrent:/config \
	-v /mnt/usbhdd/media/torrents:/data \
	lscr.io/linuxserver/qbittorrent:latest
