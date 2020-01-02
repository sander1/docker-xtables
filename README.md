# Docker xtables_geoip image

Docker image based on `alpine:3.8` with xtables-addons installed to build GeoIP tables with [Martin Schmitt's GeoLite2xtables][1] to create legacy format GeoIP database.

Sign up for a MaxMind account and [create a license key][2] to use their GeoLite2 databases. On running the Docker set your license key as an environment variable (`-e LICENSE_KEY=xxxxxxxxxxxxxxxx`).

A volume `/xt_build` can be used to get the results.

## Build from source and run
```
$ git clone https://github.com/sander1/docker-xtables.git
$ cd docker-xtables
$ docker build --tag=xtables_geoip .
$ docker run -e LICENSE_KEY=xxxxxxxxxxxxxxxx --rm -v [path to folder]:/xt_build xtables_geoip
```

## Pull from Docker Hub and run
```
$ docker run -e LICENSE_KEY=xxxxxxxxxxxxxxxx --rm -v [path to folder]:/xt_build sander1/xtables_geoip
```

On Ubuntu the default GeoIP data folder is `/usr/share/xt_geoip`.

[1]: https://github.com/mschmitt/GeoLite2xtables
[2]: https://www.maxmind.com/en/accounts/current/license-key
