docker volume create portainer_data
docker run -d -p 9001:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data --name portainer portainer/portainer