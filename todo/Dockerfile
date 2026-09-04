# syntax=docker/dockerfile:1.26
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

FROM ghcr.io/matthiasbalke/todo/all-in-one:sha-09c1b42

# renovate: datasource=github-releases depName=bashio packageName=hassio-addons/bashio versioning=loose
ARG BASHIO_VERSION="v0.19.0"

# Set shell
#SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# UTF-8 locale is needed to handle file names with non-ASCII characters
#ENV LC_CTYPE C.UTF-8

# install bashio

# renovate: datasource=repology depName=curl packageName=alpine_3_23/curl versioning=loose
ARG CURL_VERSION="8.20.0-r1"

# renovate: datasource=repology depName=bash packageName=alpine_3_23/bash versioning=loose
ARG BASH_VERSION="5.3.3-r1"

# renovate: datasource=repology depName=jq packageName=alpine_3_23/jq versioning=loose
ARG JQ_VERSION="1.8.2-r0"

RUN apk --no-cache add \
    curl=${CURL_VERSION} \
    bash=${BASH_VERSION} \
    jq=${JQ_VERSION} && \
    rm -rf /var/cache/apk/*

RUN curl -J -L -o /tmp/bashio.tar.gz \
        "https://github.com/hassio-addons/bashio/archive/${BASHIO_VERSION}.tar.gz" \
    && mkdir /tmp/bashio \
    && tar zxvf \
        /tmp/bashio.tar.gz \
        --strip 1 -C /tmp/bashio \
    \
    && mv /tmp/bashio/lib /usr/lib/bashio \
    && ln -s /usr/lib/bashio/bashio /usr/bin/bashio \
    && rm -f -r /tmp/*

# Copy root filesystem
COPY rootfs /

CMD ["/start.sh"]
