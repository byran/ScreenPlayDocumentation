#!/usr/bin/env bash

docker rmi byran/screenplaydocumentation:latest
docker build -t byran/screenplaydocumentation:latest .
