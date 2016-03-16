Docker
=======
All kind of docker files script and other related stuf
* ci, continous integration
  * docker-compose to start an ci build environment with jenkins and sonar, tailored to run on my local environment. (aka not portable)
  
* http-server, Dockerfile to create a simple node based http-server, Use this as a base iage for static content server
  * docker build -t http-server .

* jenkins, Dockerfile to create a jenkins environment with maven git and sonar-runner
  * docker build -t jenkins-ptj
  
* sonarqube, docker-compose.yml file to create a SonarQube with Progresql database
  * docker-compose up, to start the SonarQube application
  * docker-compose stop, to stop the application
  * docker-compose down, to stop and remove all images, data volumes, etc, etc.
