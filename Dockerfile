FROM gcr.io/google.com/cloudsdktool/cloud-sdk:latest

COPY dcat-deploy /home/dcat-deploy
COPY dcat_deploy.sh /usr/bin

ENTRYPOINT ["/usr/bin/dcat_deploy.sh"]
