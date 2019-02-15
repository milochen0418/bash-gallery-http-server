# bash-gallery-http-server  
## Purpose   
In nodejs, you can call http-server in any folder and your node can service this data of current as in the web.  
But some time we want to have a gallery-http-server to just show gallery on the web but not documents like http-server.  
So we can make some thing like   gallery-http-server.sh [port_number] to show photos in a ncie gallery view.  
$ cd some_photos    
$ gallery-http-server.sh 3344    
  
Then browser can open http://[you_host]:3344 to see the gallery of the photos in ./some_photos   
## Support version
We only support Ubuntu 16.04 first because Ubuntu 16.04 can run in a lot of cloud server and also in most popular embedded linux system Raspberry Pi.   When we support Ubuntu 16.04 first, we can support most devicd and cloud server in the world.  

## Dependency
The magician command gallery-http-server is fully dependent to this project  
https://github.com/milochen0418/gallery-web-generator  
