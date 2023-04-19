sudo docker run \
	--detach \
	--name=jellyfin \
	--hostname=skynet-jellyfin \
	--restart=always \
	--net=PiracyNetwork \
	-p 8096:8096 \
	-e TZ=America/Sao_Paulo \
	-v /home/skynet/media/config/jellyfin:/config \
	-v /home/skynet/media/cache/jellyfin:/cache \
	-v /mnt/usbhdd/media/data:/media \
	jellyfin/jellyfin:latest
