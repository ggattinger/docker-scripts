sudo docker run -d \
	--name pihole \
	--hostname skynet-pihole \
	--restart=unless-stopped \
	--network host \
	-e TZ="America/Sao_Paulo" \
	-e WEBPASSWORD="skynet29081997" \
	-v "pihole-etc:/etc/pihole" \
	-v "pihole-etc-dnsmasq.d:/etc/dnsmasq.d" \
	-e VIRTUAL_HOST="pihole.ggattinger.com" \
	pihole/pihole:latest
