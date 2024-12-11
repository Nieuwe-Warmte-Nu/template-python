#!/usr/bin/env bash

python{{cookiecutter.python_version}} -m venv ./.venv
if [[ "$OSTYPE" != "win32" && "$OSTYPE" != "msys" ]]; then
  echo "Activating .venv first."
  . .venv/bin/activate
fi
pip3 install pip-tools
