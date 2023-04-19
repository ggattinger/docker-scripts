docker run \
	--detach \
	--name=prometheus \
	--hostname skynet-prometheus \
	--restart=unless-stopped \
	-v prometheus-data:/prometheus \
	-e GF_SECURITY_ADMIN_PASSWORD__FILE=/run/secrets/admin_password \
	prom/prometheus-linux-arm64:latest
