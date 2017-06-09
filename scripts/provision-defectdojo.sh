echo "Provisioning Defect-Dojo..."

cd tools
git clone https://github.com/OWASP/django-DefectDojo.git
cd django-DefectDojo
docker run -it -p 8000:8000 appsecpipeline/django-defectdojo bash -c "export LOAD_SAMPLE_DATA=True && bash /django-DefectDojo/docker/docker-startup.bash"
