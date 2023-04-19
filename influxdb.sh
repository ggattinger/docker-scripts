sudo docker run 
	--detach \
	--name=influxdb \
	--hostname=skynet-influxdb \
	--restart=unless-stopped \
	-p 8086:8086 \
	-v influxdb-data:/influxdb \
	influxdb:latest
