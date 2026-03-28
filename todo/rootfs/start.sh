#!/usr/bin/env bashio
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# get HA addon config
if bashio::config.has_value 'springDatasourceUrl'; then
    SPRING_DATASOURCE_URL=$(bashio::config 'springDatasourceUrl')
    export SPRING_DATASOURCE_URL
else
    bashio::log.error "\"springDatasourceUrl\" not set. Please set \"springDatasourceUrl\" in add-on config. Aborting."
    exit 1;
fi

if bashio::config.has_value 'springDatasourceUsername'; then
    SPRING_DATASOURCE_USERNAME=$(bashio::config 'springDatasourceUsername')
    export SPRING_DATASOURCE_USERNAME
else
    bashio::log.error "\"springDatasourceUsername\" not set. Please set \"springDatasourceUsername\" in add-on config. Aborting."
    exit 1;
fi
if bashio::config.has_value 'springDatasourcePassword'; then
   SPRING_DATASOURCE_PASSWORD=$(bashio::config 'springDatasourcePassword')
   export SPRING_DATASOURCE_PASSWORD
else
    bashio::log.error "\"springDatasourcePassword\" not set. Please set \"springDatasourcePassword\" in add-on config. Aborting."
    exit 1;
fi

if bashio::config.has_value 'jwtSecret'; then
   JWT_SECRET=$(bashio::config 'jwtSecret')
   export JWT_SECRET
else
    bashio::log.error "\"jwtSecret\" not set. Please set \"jwtSecret\" in add-on config. Aborting."
    exit 1;
fi

if bashio::config.has_value 'origin'; then
   ORIGIN=$(bashio::config 'origin')
   export ORIGIN
   CORS_ALLOWED_ORIGINS=$(bashio::config 'origin')
   export CORS_ALLOWED_ORIGINS
else
    bashio::log.error "\"origin\" not set. Please set \"origin\" in add-on config. Aborting."
    exit 1;
fi

if bashio::config.has_value 'webauthnRpId'; then
   WEBAUTHN_RP_ID=$(bashio::config 'webauthnRpId')
   export WEBAUTHN_RP_ID
else
    bashio::log.error "\"webauthnRpId\" not set. Please set \"webauthnRpId\" in add-on config. Aborting."
    exit 1;
fi

if bashio::config.true 'registrationEnabled'; then
   REGISTRATION_ENABLED=true
   export REGISTRATION_ENABLED
else
   REGISTRATION_ENABLED=false
   export REGISTRATION_ENABLED
fi

NODE_ENV="production"
export NODE_ENV

# Start
bashio::log.info "Starting todo ..."
# explicitly allow spaces to separate arguments
# shellcheck disable=SC2086
bash -c "supervisord -c /etc/supervisord.conf"
