#!/bin/bash -e

TEMPZIP=$(mktemp)
GEOLITEURL="https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-Country-CSV&license_key=$LICENSE_KEY&suffix=zip"
curl $GEOLITEURL > $TEMPZIP
unzip -d /tmp -o -j $TEMPZIP '*/GeoLite2-Country-Blocks*'
rm $TEMPZIP
