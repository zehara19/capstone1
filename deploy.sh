#sed -i -e "s#{version}#v1#g" docker-compose.yml

#docker-compose up 
docker images

docker ps -a

docker run -d -p 9090:80 zehbuildapp:latest
