FROM python:3.9.12-slim

ENV POETRY_VIRTUALENVS_CREATE=false \
    POETRY_VERSION=1.1.13 \
    POETRY_HOME=/usr/local

RUN apt-get update \
    && apt-get install -y git curl vim \
    && apt-get clean

RUN curl -sSL https://install.python-poetry.org | python -

WORKDIR /code/

COPY ["poetry.lock", "pyproject.toml", "/code/"]
RUN poetry install --no-interaction

COPY . /code/
