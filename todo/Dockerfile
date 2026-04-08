# syntax=docker/dockerfile:1.4
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

FROM ghcr.io/matthiasbalke/todo/all-in-one:sha-e78a700

ARG BASHIO_VERSION="v0.17.5"

# Set shell
#SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# UTF-8 locale is needed to handle file names with non-ASCII characters
#ENV LC_CTYPE C.UTF-8

# install bashio
RUN apk --no-cache add curl=8.14.1-r2 bash=5.2.37-r0 jq=1.8.1-r0 && \
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
