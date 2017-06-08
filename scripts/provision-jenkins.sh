#!/usr/bin/env bash
set -e

echo "provisioning jenkins in container"
docker pull jenkins
cd Documents\tools
mkdir jenkins
docker run -p 8080:8080 -p 50000:50000 -v /Users/razr/jenkins:/var/jenkins_home jenkins
