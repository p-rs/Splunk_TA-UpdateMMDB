#!/bin/bash

unset LD_LIBRARY_PATH

cd /opt/splunk/etc/apps/TA-UpdateMMDB/bin

curl -so GeoLite2-City.mmdb.gz https://geolite.maxmind.com/download/geoip/database/GeoLite2-City.mmdb.gz || { echo 'Could not download MaxMind GeoIP DB, exiting.' ; exit 1; }
gunzip -f GeoLite2-City.mmdb.gz
chmod 644 GeoLite2-City.mmdb