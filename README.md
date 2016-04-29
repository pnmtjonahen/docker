Docker
=======
All kind of docker files script and other related stuf

CI
==
* ci, continous integration
  * docker-compose to start an ci build environment with [jenkins](https://jenkins.io/), [sonar](http://www.sonarqube.org/), [Hygieia](https://github.com/capitalone/Hygieia), and [nexus](http://www.sonatype.org/nexus/).
  * some extra notes on hychieia, afther initial docker-compose up, or if you run the images standalone, the mongo database needs an database user.

CI-Hychieia
==

Adding a database user to the mongo database.
* Bring up the container images

```bash
docker-compose up -d
```

  * Create user in mongo

```bash
docker exec -t -i mongodb bash
```

  * Run the following commands as shown below at mongodb command prompt

```bash
         $ mongo  
         MongoDB shell version: 3.0.4
         connecting to: test  

         > use dashboard
         switched to db dashboard
         > db.createUser(
                  {
                    user: "db",
                    pwd: "dbpass",
                    roles: [
                       {role: "readWrite", db: "dashboard"}
                            ]
                    })
                Successfully added user: {
                  "user" : "dbuser",
                  "roles" : [
                  {
                    "role" : "readWrite",
                    "db" : "dashboard"
                  }
                  ]
                }  
```
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
