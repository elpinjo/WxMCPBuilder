ARG EDGE_VERSION

FROM iwhicr.azurecr.io/webmethods-edge-runtime:${EDGE_VERSION}

ARG WPM_CRED
ARG GITHUB_CREDS_USR
ARG GITHUB_CREDS_PSW

WORKDIR /opt/softwareag/wpm

ENV PATH=/opt/softwareag/wpm/bin:$PATH

RUN /opt/softwareag/wpm/bin/wpm.sh install -u ${GITHUB_CREDS_USR} -p ${GITHUB_CREDS_PSW} -r https://github.com/ibm -d /opt/softwareag/IntegrationServer WxMCPServer

WORKDIR /
