#!/usr/bin/env bash
 
usage() {
cat << EOF
Usage: ${0} DATA_CATALOG PROJECT_ID BRANCH_NAME [-g GITHUB_SECRET_ID] [-s SERVICE_ACCOUNT] [-f SCHEMAS_FOLDER -c SCHEMAS_CONFIG]
    DATA_CATALOG ...... Path to the data catalog
    PROJECT_ID ........ Google Project ID
    BRANCH_NAME ....... Git branch
    GITHUB_SECRET_ID .. Github secret ID
    SERVICE_ACCOUNT ... Google service account
    SCHEMAS_FOLDER .... Path to the schemas
    SCHEMAS_CONFIG .... Schema config
EOF
}

DATA_CATALOG=${1}
PROJECT_ID=${2}
BRANCH_NAME=${3}

shift 3

GITHUB_SECRET_ID=""
SERVICE_ACCOUNT=""
SCHEMAS_FOLDER=""
SCHEMAS_CONFIG=""

while getopts "s:g:f:c:" opt; do
    case ${opt} in
        g) GITHUB_SECRET_ID=${OPTARG} ;;
        s) SERVICE_ACCOUNT=${OPTARG} ;;
        f) SCHEMAS_FOLDER=${OPTARG} ;;
        c) SCHEMAS_CONFIG=${OPTARG} ;;
        [?]) usage && exit 1;
    esac
done

/home/dcat-deploy/deploy_dcat_gcp.sh "${DATA_CATALOG}" "${PROJECT_ID}" "${BRANCH_NAME}" "${GITHUB_SECRET_ID}" "${SERVICE_ACCOUNT}" "${SCHEMAS_FOLDER}" "${SCHEMAS_CONFIG}"
