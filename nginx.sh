sudo docker run -d --name nginx \
	--hostname skynet-nginx \
	--restart=always \
	-v /nginx-data/:/_data/ \
	-p 802:80 \
	-p 4431:443 \
	nginx:latest
