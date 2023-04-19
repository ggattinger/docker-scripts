docker run \
	--detach \
	--name=squid \
	--restart=unless-stopped \
        --hostname=skynet-squid \
        --net=PiracyNetwork \
	-e TZ=Americas/Sao_Paulo \
	-p 3128:3128 \
	ubuntu/squid:latest
