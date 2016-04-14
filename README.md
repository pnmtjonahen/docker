Docker
=======
All kind of docker files script and other related stuf
* ci, continous integration
  * docker-compose to start an ci build environment with jenkins, sonar and hygieia, tailored to run on my local environment. (aka not portable)
  * some extra notes on hychieia, afther initial docker-compose up, or if you run the images standalone, the mongo database needs an database user. 
  
* Bring up the container images

```bash
docker-compose up -d
```

  * Create user in mongo (if you log into the container then you dont have to install mongo locally)

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
  
* http-server, Dockerfile to create a simple node based http-server, Use this as a base iage for static content server
  * docker build -t http-server .

* jenkins, Dockerfile to create a jenkins environment with maven git and sonar-runner
  * docker build -t jenkins-ptj
  
* sonarqube, docker-compose.yml file to create a SonarQube with Progresql database
  * docker-compose up, to start the SonarQube application
  * docker-compose stop, to stop the application
  * docker-compose down, to stop and remove all images, data volumes, etc, etc.
