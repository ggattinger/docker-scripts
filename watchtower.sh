sudo docker run --detach \
	--name watchtower \
	--hostname skynet-watchtower \
	--restart=unless-stopped \
	--volume /var/run/docker.sock:/var/run/docker.sock \
	-e TZDatabaseName="America/Sao_Paulo" \
	containrrr/watchtower \
	--debug \
	--cleanup \
	--schedule "0 0 0 * * *"
