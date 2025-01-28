FROM python:3.12-slim-bookworm

COPY --from=ghcr.io/astral-sh/uv:0.5.24 /uv /uvx /bin/

WORKDIR /workspace
COPY requirements-dev.txt .

RUN apt-get update && apt-get install -y \
    build-essential \
    vim \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN cd /opt && \
    uv venv && \
    uv pip install -r /workspace/requirements-dev.txt && \
    echo "source /opt/.venv/bin/activate" >> /etc/bash.bashrc
