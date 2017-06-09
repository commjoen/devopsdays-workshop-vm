#!/usr/bin/env bash
set -e
mkdir jenkins

echo "provisioning jenkins in container"
docker pull jenkins

docker run -p 8080:8080 -p 50000:50000 -v /home/vagrant/jenkins:/var/jenkins_home jenkins
