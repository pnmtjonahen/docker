Jenkins
===
Dockerfile to create a Jenkins environment with maven, git, sonar-runner, and maven configured to use nexus.

On top of the base Jenkins image the following needs to be done to get a working Jenkins environment:
- java home needs to be set, and a JDK needs to be configured in Jenkins. As the image already contains a JDK no extra JDK needs to be installed. Assuming that the available JDK is sufficient.
- maven needs to be installed
  - Jenkins needs a maven configuration installed
  - A new settings.xml is needed that points to nexus as its repositories
- sonar-runner is installed, (not needed)
  - Jenkins needs the sonar-runner configured
- additional plugins are installed in Jenkins. See also [Installing plugins in jenkins](https://wiki.jenkins-ci.org/display/JENKINS/Plugins)
  - maven
  - git
  - sonar

More on howto configure Jenkins see [jenkins script console](https://wiki.jenkins-ci.org/display/JENKINS/Jenkins+Script+Console) and also checkout the documentation of the official docker image [jenkins](https://hub.docker.com/_/jenkins/)

Building the image
```bash
docker build -t tjonahen/jenkins .
```
