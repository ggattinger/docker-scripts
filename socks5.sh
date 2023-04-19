docker run \
	--detach \
	--name=socks5 \
	--hostname=skynet-socks5 \
	--restart=unless-stopped \
        --net=PiracyNetwork \
	-p 1080:1080 \
	-e TZ=America/Sao_Paulo \
	serjs/go-socks5-proxy:latest
