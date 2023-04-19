sudo docker run \
	--name=nextcloud-aio-mastercontainer \
	--hostname=skynet-nextcloud \
	--sig-proxy=false \
	--restart always \
	-p 85:80 \
	-p 8085:8080 \
	-p 8445:8443 \
	-v nextcloud_aio_mastercontainer:/mnt/docker-aio-config \
	-v /var/run/docker.sock:/var/run/docker.sock:ro \
	nextcloud/all-in-one:latest
