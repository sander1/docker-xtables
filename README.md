# Docker xtables_geoip image

Docker image based on `alpine:3.8` with xtables-addons and [Martin Schmitt's GeoLite2xtables][1] scripts to create legacy format GeoIP database.

__Note:__ As of 7 January 2020, changes have been made to the convert script, see commit [329927a6][2].

## MaxMind license key
Sign up for a MaxMind account and [create a license key][3] to use their GeoLite2 databases. On running the Docker set your license key as an environment variable (`-e LICENSE_KEY=xxxxxxxxxxxxxxxx`, where `xxxxxxxxxxxxxxxx` is your license key).

# Building and running
A volume `/xt_build` can be used to get the results. Replace `[path to folder]` in the following commands with the correct path to the `xt_geoip` on the host machine. On Ubuntu the default GeoIP data folder is `/usr/share/xt_geoip`.

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

[1]: https://github.com/mschmitt/GeoLite2xtables
[2]: https://github.com/sander1/GeoLite2xtables/commit/329927a6b8d2a4f7581b0493c54fc48bc99ecf79
[3]: https://www.maxmind.com/en/accounts/current/license-key
