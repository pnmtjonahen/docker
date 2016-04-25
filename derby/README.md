Derby
======
Docker file for creating a derby database,
- first download the tar.gz derby distribution. This way we don't have to install wget on the image.
```bash
wget http://apache.mirror.iphh.net//db/derby/db-derby-10.12.1.1/db-derby-10.12.1.1-bin.tar.gz
```

Building the image
```bash
docker build -t tjonahen/derbydb .
```
