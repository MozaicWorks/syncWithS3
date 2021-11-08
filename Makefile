deb:
	fpm -s dir -t deb -n s3sync --deb-no-default-config-files ./=/usr/bin 
