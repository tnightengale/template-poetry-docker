FROM python:3.11.3-slim-bullseye

ENV POETRY_VIRTUALENVS_CREATE=false \
    POETRY_VERSION=1.4.2 \
    POETRY_HOME=/usr/local \
    WORKING_DIR=/code/

RUN apt-get update \
    && apt-get install -y git curl vim \
    && apt-get clean

RUN curl -sSL https://install.python-poetry.org | python -

WORKDIR $WORKING_DIR

COPY ["poetry.lock", "pyproject.toml", "$WORKING_DIR"]
RUN poetry install --no-interaction

COPY [".", "$WORKING_DIR"]
