#!/usr/bin/env bashio
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# get HA addon config
if bashio::config.has_value 'springDatasourceUrl'; then
    export SPRING_DATASOURCE_URL=$(bashio::config 'springDatasourceUrl')
else
    bashio::log.error "\"springDatasourceUrl\" not set. Please set \"springDatasourceUrl\" in add-on config. Aborting."
    exit 1;
fi

if bashio::config.has_value 'springDatasourceUsername'; then
    export SPRING_DATASOURCE_USERNAME=$(bashio::config 'springDatasourceUsername')
else
    bashio::log.error "\"springDatasourceUsername\" not set. Please set \"springDatasourceUsername\" in add-on config. Aborting."
    exit 1;
fi
if bashio::config.has_value 'springDatasourcePassword'; then
   export SPRING_DATASOURCE_PASSWORD=$(bashio::config 'springDatasourcePassword')
else
    bashio::log.error "\"springDatasourcePassword\" not set. Please set \"springDatasourcePassword\" in add-on config. Aborting."
    exit 1;
fi

if bashio::config.has_value 'jwtSecret'; then
   export JWT_SECRET=$(bashio::config 'jwtSecret')
else
    bashio::log.error "\"jwtSecret\" not set. Please set \"jwtSecret\" in add-on config. Aborting."
    exit 1;
fi

if bashio::config.has_value 'origin'; then
   export ORIGIN=$(bashio::config 'origin')
   export CORS_ALLOWED_ORIGINS=$(bashio::config 'origin')
else
    bashio::log.error "\"origin\" not set. Please set \"origin\" in add-on config. Aborting."
    exit 1;
fi

if bashio::config.has_value 'webauthnRpId'; then
   export WEBAUTHN_RP_ID=$(bashio::config 'webauthnRpId')
else
    bashio::log.error "\"webauthnRpId\" not set. Please set \"webauthnRpId\" in add-on config. Aborting."
    exit 1;
fi

if bashio::config.true 'registrationEnabled'; then
   export REGISTRATION_ENABLED=true
else
   export REGISTRATION_ENABLED=false
fi

export NODE_ENV="production"

# Start
bashio::log.info "Starting todo ..."
# explicitly allow spaces to separate arguments
# shellcheck disable=SC2086
bash -c "supervisord -c /etc/supervisord.conf"
