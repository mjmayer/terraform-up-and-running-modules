#!/bin/bash

echo :"Hello, World, v2" > index.html
nohop busybox httpd -f -p ${server_port} &
