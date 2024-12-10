#!/usr/bin/env sh

if [[ "$OSTYPE" != "win32" && "$OSTYPE" != "msys" ]]; then
  echo "Activating .venv first."
  . .venv/bin/activate
fi

python -m mypy ./src/{{cookiecutter.python_import_name}} ./unit_test/
