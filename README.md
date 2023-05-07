# Poetry & Docker
A Python environment inside [Docker](https://docs.docker.com/get-started/)
with [Poetry](https://python-poetry.org) to manage dependencies.

## Overview
Install [make](https://www.gnu.org/software/make/) and Docker to build and run
your app by running `make up`.

There is a `.devcontainer.json` setting file for a [VS Code Dev
Container](https://code.visualstudio.com/docs/remote/containers), which provides
a way to develop inside the container, using the VS Code editor.

There is also a `make it` command for interactively entering the container in a
shell, if not using VS Code Dev Containers.
