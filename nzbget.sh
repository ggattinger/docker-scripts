sudo docker run \
	--detach \
	--name=nzbget \
	--hostname=skynet-nzbget \
	--restart unless-stopped \
	--net=PiracyNetwork \
	-p 6789:6789 \
	-e PUID=1000 \
	-e PGID=1000 \
	-e TZ=America/Sao_Paulo \
	-e NZBGET_USER=skynet \
	-e NZBGET_PASS=skynet29081997 \
	-v /home/skynet/media/config:/config \
	-v /home/skynet/media/data/media/downloads:/downloads \
  	lscr.io/linuxserver/nzbget:latest
