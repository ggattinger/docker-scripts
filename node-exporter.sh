sudo docker run \
	--detach \
	--name=node-exporter \
	--hostname skynet-n-exporter \
	--restart=unless-stopped \
	-v "/:/host:ro,rslave" \
	-p 9100:9100 \
	quay.io/prometheus/node-exporter:latest \
	--path.rootfs=/host
