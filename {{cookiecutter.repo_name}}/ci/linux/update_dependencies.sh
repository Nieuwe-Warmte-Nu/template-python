#!/usr/bin/env sh

if [[ "$OSTYPE" != "win32" && "$OSTYPE" != "msys" ]]; then
  echo "Activating .venv first."
  . .venv/bin/activate
fi

pip-compile --output-file=requirements.txt pyproject.toml
pip-compile --extra=dev -c requirements.txt --output-file=dev-requirements.txt pyproject.toml
