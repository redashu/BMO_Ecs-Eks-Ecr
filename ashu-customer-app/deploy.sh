#!/bin/bash

if  [ "$myapp"  == "dev" ]
then
    cp -rf /common/dev_app/*  /var/www/html/
    httpd -DFOREGROUND  # is to start httpd service 

elif   [ "$myapp"  == "prod" ]
then
    cp -rf /common/prod_app/*  /var/www/html/
    httpd -DFOREGROUND  # is to start httpd service 
else 
    echo " Hey you need to check with Dev and docker team for ENV section" >/var/www/html/index.html
    httpd -DFOREGROUND

fi 