FROM gcr.io/cloud-datalab/datalab:latest

COPY *.patch /tmp/
RUN patch -p0 -i /tmp/0001-fix-jupyter-host.patch
RUN patch -p0 -i /tmp/0002-allow-cloudshell-websocket-cross-origin.patch

