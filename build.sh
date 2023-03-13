set -e
docker stop $(docker ps -aq) || true
docker rm  $(docker ps -aq) || true

docker build -t demoimage:s1 .
