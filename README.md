# cloudbuilder-dcat-deploy

This repo contains the code for the creation of a google cloudbuilder (docker container) which wraps the dcat-deploy-gcp from the  [dcat-deploy repo](https://github.com/vwt-digital/dcat-deploy).

Detailed information on the parameters can be found in the dcat-deploy documentation

# Using the cloudbuilder
There are 2 possibilities using the cloudbuilder

## Direct invocation of the cloudbuiler using the default entrypoint
    - name: '<PATH_TO_REPO>/cloudbuilder-dcat-deploy:latest'
      id: 'dcat-deploy'
      args:
        - 'data_catalog.json'
        - '${PROJECT_ID}'
        - '${BRANCH_NAME}'
        - '-e'
        - '<CONFIG_PROJECT>'

## Using the 'bash'  entrypoint and call the deploy_dcat-gcp.sh script
    - name: '<PATH_TO_REPO>/cloudbuilder-dcat-deploy:latest'    
      id: 'dcat-deploy'
      entrypoint: 'bash'
      args:
        - '-c'
        - |
          deploy_dcat_gcp.sh \
          data_catalog.json \
          ${PROJECT_ID} \
          ${BRANCH_NAME} \
          -e <CONFIG_PROJECT>
