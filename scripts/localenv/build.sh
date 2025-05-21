#!/bin/bash

set -e

./gradlew build
export VERSION=$(grep "version =" build.gradle | awk '{print $3}' | sed "s/'//g")
./gradlew createDockerFile
./gradlew buildImage

