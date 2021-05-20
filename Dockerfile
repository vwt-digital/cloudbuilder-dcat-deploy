FROM gcr.io/google.com/cloudsdktool/cloud-sdk:latest

COPY dcat-deploy /home/dcat-deploy
RUN ls -sf /home/dcat-deploy/deploy_dcat_gcp.sh /usr/bin/deploy_dcat_gcp.sh

ENTRYPOINT ["/home/dcat-deploy/deploy_dcat_gcp.sh"]
