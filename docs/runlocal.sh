#!/bin/bash -x

THIS_SCRIPT=$(basename -- "$0")
WORKDIR=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
echo Running $THIS_SCRIPT at $WORKDIR

CHE_URL='http://codeready-codeready.apps.cluster-blr-f777.blr-f777.example.opentlc.com'
CHE_USER_PASSWORD='r3dh4t1!'
CONSOLE_URL='https://console-openshift-console.apps.cluster-blr-f777.blr-f777.example.opentlc.com'
CONTENT_URL_PREFIX="file:///app-data/"
KEYCLOAK_URL='http://keycloak-codeready.apps.cluster-blr-f777.blr-f777.example.opentlc.com'
LOG_TO_STDOUT='true'
MASTER_URL='https://api.cluster-blr-f777.blr-f777.example.opentlc.com:6443'
OPENSHIFT_USER_PASSWORD='r3dh4t1!'
ROUTE_SUBDOMAIN='apps.cluster-blr-f777.blr-f777.example.opentlc.com'
WORKSHOPS_URLS="file:///app-data/_workshop.yml"

docker run -it -p 8080:8080 --rm -v ${WORKDIR}:/app-data \
-e CHE_URL=${CHE_URL} \
-e CHE_USER_PASSWORD=${CHE_USER_PASSWORD} \
-e CONSOLE_URL=${CONSOLE_URL} \
-e CONTENT_URL_PREFIX=${CONTENT_URL_PREFIX} \
-e KEYCLOAK_URL=${KEYCLOAK_URL} \
-e LOG_TO_STDOUT=${LOG_TO_STDOUT} \
-e MASTER_URL=${MASTER_URL} \
-e OPENSHIFT_USER_PASSWORD=${OPENSHIFT_USER_PASSWORD} \
-e ROUTE_SUBDOMAIN=${ROUTE_SUBDOMAIN} \
-e WORKSHOPS_URLS=${WORKSHOPS_URLS} \
    quay.io/jamesfalkner/workshopper

