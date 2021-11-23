ARG FROM=openstackhelm/horizon:wallaby-ubuntu_focal
FROM ${FROM}

COPY . /tmp
RUN chmod +x /tmp/ex.sh && \
    /tmp/ex.sh

