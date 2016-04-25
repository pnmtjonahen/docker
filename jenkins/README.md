Jenkins
======
Docker file for creating a working Jenkins,
- java home needs to be set, and a jdk needs to be configured in jenkins
- maven needs to be installed, and configured, in jenkins and a new settings.xml is created to point to my nexus instance
- sonar-runner is installed, (not needed) and configured in jenkins

Building the image
```bash
docker build -t tjonahen/jenkins .
```
