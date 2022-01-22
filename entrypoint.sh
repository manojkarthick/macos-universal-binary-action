#!/bin/bash

OWNER="$1"
REPOSITORY="$2"
TAG="$3"
AMD64="$4"
ARM64="$5"
COMPRESSED="$6"
OVERWRITE="$7"
BINARY_PATH="$8"

options=("--owner" "$OWNER" "--repo" "$REPOSITORY" "--tag" "$TAG" "--amd64" "$AMD64" "--arm64" "$ARM64")

if [ -n "$BINARY_PATH" ]; then
    options+=("--binary-path")
    options+=("$BINARY_PATH")
fi

if [ "$COMPRESSED" == "true" ]; then
    options+=("--compressed")
fi

if [ "$OVERWRITE" == "true" ]; then
    options+=("--overwrite")
fi

command="./amalgam ${options[*]}"
echo "Running: $command"
eval "$command"
