#!/usr/bin/env bash

if [[ "$OSTYPE" != "win32" && "$OSTYPE" != "msys" ]]; then
  echo "Activating .venv first."
  . .venv/bin/activate
fi

flake8 ./src/{{cookiecutter.python_import_name}} ./unit_test/
