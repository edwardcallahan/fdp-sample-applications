#!/usr/bin/env bash

set -eux

HERE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd -P )"

cd ${HERE}/source/core
for i in fdp-kstream-dsl fdp-kstream-processor
do
  sbt "set version in ThisBuild := \"$VERSION\"" "show version" $i/clean $i/docker $i/dockerPush
done

echo "$PWD: built package and docker image(s). Pushed the docker image(s)."
