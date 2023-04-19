docker run \
	--detach \
	--name=grafana \
	--hostname skynet-grafana \
	--restart=unless-stopped \
	-v /var/run/docker.sock:/app/data/docker.sock:ro \
	-v grafana-data:/var/lib/grafana \
	-p 3000:3000 \
	-e GF_SECURITY_ADMIN_PASSWORD__FILE=/run/secrets/admin_password \
	grafana/grafana-enterprise:latest
