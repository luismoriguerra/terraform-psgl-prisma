docker build -t my-postgres-image .
docker images -a
docker run -d --name my-postgres-container -p 5555:5432 my-postgres-image


docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -q)
