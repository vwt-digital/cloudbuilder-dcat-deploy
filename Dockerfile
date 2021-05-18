FROM gcr.io/google.com/cloudsdktool/cloud-sdk:latest

COPY dcat-deploy /home/dcat-deploy

ENTRYPOINT ["/home/dcat-deploy/deploy_dcat_gcp.sh"]
