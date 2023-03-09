#sed -i -e "s#{version}#v1#g" docker-compose.yml

docker compose up -d

docker ps -a
