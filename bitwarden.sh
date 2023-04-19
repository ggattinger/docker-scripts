sudo docker run -d --name bitwarden \
	--restart=unless-stopped \
	--hostname skynet-bitwarden \
	-e ADMIN_TOKEN=1wM3hQyvz87YTq75o1KuNw4f0ZI1AR3yUo5EI8LrYKlugTBV \
	-e ROCKET_TLS='{certs="/ssl/ggattinger.pem",key="/ssl/ggattinger.key"}' \
	-v /var/run/docker.sock:/var/run/docker.sock:ro \
	-v /etc/ssl/:/ssl/ \
	-v bitwarden-data:/data/ \
	-p 801:80 \
	vaultwarden/server:latest
