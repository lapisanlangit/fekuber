@echo off
docker build . -t lapisan/fekuber:1.0
docker run --name fekuber -p 80:80 -d lapisan/fekuber:1.0
