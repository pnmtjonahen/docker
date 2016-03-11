Docker
=======
All kind of docker files script and other related stuf

* http-server, Dockerfile to create a simple node based http-server, Use this as a base iage for static content server
  * docker build -t http-server .

* sonarqube, docker-compose.yml file to create a SonarQube with Progresql database
  * docker-compose up, to start the SonarQube application
  * docker-compose stop, to stop the application
  * docker-compose down, to stop and remove all images, data volumes, etc, etc.
