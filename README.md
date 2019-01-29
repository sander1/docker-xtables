# Docker xtables image

Docker image based on `alpine:latest` with xtables-addons installed to build GeoIP tables with [Martin Schmitt's GeoLite2xtables][1] to create legacy format GeoIP database.

A volume `/xt_build` can be used to get the results.

```bash
$ docker build --tag=xtables .
$ docker run --rm -v <path to folder>:/xt_build xtables
```

On Ubuntu the default GeoIP data folder is `/usr/share/xt_geoip`.

[1]: https://github.com/mschmitt/GeoLite2xtables
