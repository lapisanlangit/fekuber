#!/bin/bash
sudo docker build . -t lapisan/fekuber:1.0
sudo docker run --name fekuber -p 80:80 -d lapisan/fekuber:1.0
