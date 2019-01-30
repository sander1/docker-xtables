# Docker xtables_geoip image

Docker image based on `alpine:3.8` with xtables-addons installed to build GeoIP tables with [Martin Schmitt's GeoLite2xtables][1] to create legacy format GeoIP database.

A volume `/xt_build` can be used to get the results.

## Build from source and run
```bash
$ docker build --tag=xtables_geoip .
$ docker run --rm -v <path to folder>:/xt_build xtables_geoip
```

## Pull from Docker Hub and run
```bash
$ docker pull sander1/xtables_geoip
$ docker run --rm -v <path to folder>:/xt_build xtables_geoip
```

On Ubuntu the default GeoIP data folder is `/usr/share/xt_geoip`.

[1]: https://github.com/mschmitt/GeoLite2xtables
