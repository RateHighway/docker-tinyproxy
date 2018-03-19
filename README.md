# Docker Tinyproxy

A quick and easy Dockerised Tinyproxy, adapted from [Daniel
Middleton's](https://github.com/monokal/docker-tinyproxy) original.

This version simplifies the startup procedure. Instead of passing an ACL
on the command line and modifying the tinyproxy configuration file, it
simply uses the file at `/etc/tinyproxy/tinyproxy.conf`.

To configure Tinyproxy, mount your own `tinyproxy.conf` at this location
in the container. Use `tinyproxy-build/tinyproxy.conf` in this
repository as a base for creating your own file.

> Note: the default `tinyproxy.conf` accepts connections only from
> `127.0.0.1`, which is the container itself, so you must use a custom
> configuration file with additional `Allow` directives to make the
> container usable.

Find it on [GitHub](https://github.com/RateHighway/docker-tinyproxy).

Find it on [DockerHub](https://registry.hub.docker.com/u/ratehighway/tinyproxy/).

## Usage

### Running a new Tinyproxy container

```
docker run -d --name=tinyproxy \
  -p 8888:8888 \
  -v /your/tinyproxy.conf:/etc/tinyproxy/tinyproxy.conf \
  ratehighway/tinyproxy
```

### Stats

Navigating to `http://tinyproxy.stats/` while connected to the proxy
will display the Tinyproxy Stats page.

### Logging

The default configuration will log to stdout.

## Building

Building the tinyproxy image:

    docker build -t ratehighway/tinyproxy:latest .

(Re)building the custom tinyproxy binary:

    (cd tinyproxy-build && sh build.sh)
