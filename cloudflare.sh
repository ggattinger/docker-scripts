docker run \ 
	--daemon \
	--name=cloudflare \
	--hostname=cyberdyne-cloudflare \
	cloudflare/cloudflared:latest \
	tunnel --no-autoupdate \
	run --token eyJhIjoiMjAxNDliMjRkYjE3NWY1YTU4MjZhY2UwZDhlMTI5NjAiLCJ0IjoiYTNiZTQ2N2MtYzNjMS00NDljLTlmNzUtNTZmOTA0NDJlNjViIiwicyI6IllUSXhOems1WVRNdFlXTmxZUzAwWWpNNUxUbGpPRGN0WWpZMVlXSTNZV1U1TURZeSJ9
