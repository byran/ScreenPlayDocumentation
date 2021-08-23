#!/usr/bin/env bash

readonly SCRIPT_PATH=$(realpath $(dirname $0))
cd "$SCRIPT_PATH"

rm -rf .venv
python3 -m venv .venv

source .venv/bin/activate

pip install -r requirements.txt

echo run 'source .venv/bin/activate' to active the environment
