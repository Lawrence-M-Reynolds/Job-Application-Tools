#!/bin/bash

files="./content/1_header.md \
       ./content/2_profile.md \
       ./content/3_technical-skills.md \
       ./content/4.1_employment_java2.md \
       ./content/4.2_employment_aem.md \
       ./content/4.3_employment_java1.md \
       ./content/5_education.md \
       ./content/6_interests-and-activities.md"

docker run --rm \
       --volume "$(pwd):/data" \
       --user $(id -u):$(id -g) \
       pandoc/core \
       $files \
       -o ./output/Java_Developer/Lawrence_Reynolds_CV_Java_Developer_$(date +%F).docx \
       --lua-filter=/data/scripts/replaceSensitiveInfo.lua \
       --reference-doc=/data/templates/custom-reference.docx

docker run --rm \
       --volume "$(pwd):/data" \
       --user $(id -u):$(id -g) \
       pandoc/core \
       $files \
       --lua-filter=/data/scripts/replaceSensitiveInfo.lua \
       -o ./output/Java_Developer/Lawrence_Reynolds_CV_Java_Developer_$(date +%F).md