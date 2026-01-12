#!/bin/bash

files="./content/full-stack-fragments/1_header.md \
       ./content/full-stack-fragments/2_profile.md \
       ./content/3_technical-skills.md \
       ./content/4.1_employment_java2.md \
       ./content/full-stack-fragments/4.2_employment_aem.md \
       ./content/full-stack-fragments/4.3_employment_java1.md \
       ./content/5_education.md \
       ./content/6_interests-and-activities.md"

docker run --rm \
       --volume "$(pwd):/data" \
       --user $(id -u):$(id -g) \
       pandoc/core \
       $files \
       -o ./output/FullStack_Developer/Lawrence_Reynolds_CV_FullStack_Developer_$(date +%F).docx \
       --lua-filter=/data/scripts/replaceSensitiveInfo-custom.lua \
       --reference-doc=/data/templates/template-custom.docx

docker run --rm \
       --volume "$(pwd):/data" \
       --user $(id -u):$(id -g) \
       pandoc/core \
       $files \
       --lua-filter=/data/scripts/replaceSensitiveInfo-custom.lua \
       -o ./output/FullStack_Developer/Lawrence_Reynolds_CV_FullStack_Developer_$(date +%F).md