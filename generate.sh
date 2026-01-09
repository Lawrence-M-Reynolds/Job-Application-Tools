#!/bin/bash

docker run --rm \
       --volume "$(pwd):/data" \
       --user $(id -u):$(id -g) \
       pandoc/core ./content/core-java-developer.md -o ./output/Lawrence_Reynolds_CV_$(date -u +"%d%m%Y").docx \
       --data-dir=/data/templates \
       --reference-doc=/data/templates/custom-reference.docx
