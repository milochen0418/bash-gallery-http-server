
# Purpose of  bash-gallery-http-server project 
In nodejs, you can use $ http-server  to open currently folder  
In the project bash-gallery-http-server, we let you do gallery-http-server to show gallery of your photos on web  

# Installation
$ sudo ./install.sh

# Easy Usage
After finish installation, you can do the following thing   
## check help 
$ gallery-http-server --help     
## open current folder with default port 5566 
$ gallery-http-server  
Browser open  http://yourhost:5566  
## open current folder with specific port 2266
$ gallery-http-server 2266  
Browser open http://yourhost:2266  
## open specific folder with specific port 2267
$ gallery-http-server 2267 ~/Downloads  
Browser open http://yourhost:2267  and you can see all pictures in ~/Downloads 

# Demo Pictures
![image](https://github.com/milochen0418/github-readme-material/blob/master/bash-gallery-http-server/picture_01.png)  
![image](https://github.com/milochen0418/github-readme-material/blob/master/bash-gallery-http-server/picture_02.png)  
![image](https://github.com/milochen0418/github-readme-material/blob/master/bash-gallery-http-server/picture_03.png)  

# History 
## bash-gallery-http-server original design concept
### Purpose: http-server-like utility but the webpage is show in cool gallery   
In nodejs, you can call http-server in any folder and your node can service this data of current as in the web.  
But some time we want to have a gallery-http-server to just show gallery on the web but not documents like http-server.  
So we can make some thing like   gallery-http-server.sh [port_number] to show photos in a ncie gallery view.  
$ cd some_photos    
$ gallery-http-server.sh 3344    
  
Then browser can open http://[you_host]:3344 to see the gallery of the photos in ./some_photos   
### Support version
We only support Ubuntu 16.04 first because Ubuntu 16.04 can run in a lot of cloud server and also in most popular embedded linux system Raspberry Pi.   When we support Ubuntu 16.04 first, we can support most devicd and cloud server in the world.  

### Dependency
The magician command gallery-http-server is fully dependent to this project  
https://github.com/milochen0418/gallery-web-generator  


# Future Plan
## About VR Gallery 
https://www.npmjs.com/package/react-vr-image-gallery 
