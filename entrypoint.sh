#!/bin/bash

OWNER="$1"
REPOSITORY="$2"
TAG="$3"
AMD64="$4"
ARM64="$5"
COMPRESSED="$6"
OVERWRITE="$7"
UNIVERSAL_IDENTIFIER="$8"

options=("--owner" "$OWNER" "--repo" "$REPOSITORY" "--tag" "$TAG" "--amd64" "$AMD64" "--arm64" "$ARM64" "--identifier" "$UNIVERSAL_IDENTIFIER")

if [ "$COMPRESSED" == "true" ]; then
    options+=("--compressed")
fi

if [ "$OVERWRITE" == "true" ]; then
    options+=("--overwrite")
fi

command="/amalgam ${options[*]}"
echo "Running: $command"
eval "$command"
