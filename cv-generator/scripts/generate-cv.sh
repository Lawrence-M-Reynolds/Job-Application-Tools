#!/bin/bash

secureConfigDir=$1
luaFilterFileName=$2
referenceDocFileName=$3

cvTypeName=$4
cvNamePrefix=$5
files=$6

docker run --rm \
       --volume "$(pwd):/data" \
       --volume $(pwd)/$secureConfigDir:/etc/cv-generator-config \
       --user $(id -u):$(id -g) \
       pandoc/core \
       $files \
       -o ./output/$cvTypeName/"$cvNamePrefix"_"$cvTypeName"_$(date +%F).docx \
       --lua-filter=/etc/cv-generator-config/$luaFilterFileName \
       --reference-doc=/etc/cv-generator-config/$referenceDocFileName

docker run --rm \
       --volume "$(pwd):/data" \
       --volume $(pwd)/$secureConfigDir:/etc/cv-generator-config \
       --user $(id -u):$(id -g) \
       pandoc/core \
       $files \
       --lua-filter=/etc/cv-generator-config/$luaFilterFileName \
       -o ./output/$cvTypeName/"$cvNamePrefix"_"$cvTypeName"_$(date +%F).md
       