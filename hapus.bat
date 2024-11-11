@echo off 
docker container stop fekuber
docker container rm fekuber
docker rmi lapisan/fekuber:1.0
