FROM registry.access.redhat.com/ubi8:8.8-1009

# renovate: datasource=github-releases depName=anchore/syft
ARG syft_version="0.85.0"


RUN dnf install -y https://github.com/anchore/syft/releases/download/v"${syft_version}"/syft_"${syft_version}"_linux_amd64.rpm && dnf clean all

