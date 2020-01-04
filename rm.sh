docker stop  $(docker ps -a -q)
docker rm  	 $(docker ps -a -q)
docker rmi  $(docker image ls -a -q)
docker build -t test .  
docker run -p 80:80 -p 443:443 -it test   