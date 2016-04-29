Docker
=======
All kind of docker files script and other related stuf

CI
==
* ci, continous integration
  * docker-compose to start an ci build environment with [jenkins](https://jenkins.io/), [sonar](http://www.sonarqube.org/), [Hygieia](https://github.com/capitalone/Hygieia), and [nexus](http://www.sonatype.org/nexus/).
  
http-server
===
* http-server, Dockerfile to create a simple node based http-server, Use this as a base image for static content server

```bash
 docker build -t tjonahen/http-server .
```
Jenkins
===
* jenkins, Dockerfile to create a jenkins environment with maven, git, sonar-runner, and maven configured to use nexus.

```bash
  docker build -t tjonahen/jenkins .
```
SonarQube
===
* sonarqube, docker-compose.yml file to create a SonarQube with Progresql database
  * docker-compose up, to start the SonarQube application
  * docker-compose stop, to stop the application
  * docker-compose down, to stop and remove all images, data volumes, etc, etc.
