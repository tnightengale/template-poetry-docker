# Poetry & Docker
A templated starting point for building python apps using [poetry](https://python-poetry.org) to manage
dependencies and [docker](https://docs.docker.com/get-started/) and/or
[docker-compose](https://docs.docker.com/compose/) for distribution.

## Overview
Install [make](https://www.gnu.org/software/make/) and docker on your local
system to build and run your app with the `make up` target.

There is a `.devcontainer.json` setting file for a [VS Code Remote
Container](https://code.visualstudio.com/docs/remote/containers), which provide
a way to develop inside the running container, using the VS Code editor. It
is configured to use the `docker-compose.yml` by default. 

There is also a `make it` target for interactively entering the container in a
shell.
