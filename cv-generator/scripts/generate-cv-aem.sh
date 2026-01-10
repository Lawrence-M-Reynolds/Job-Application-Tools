#!/bin/bash

files="./content/aem-fragments/1_header.md \
       ./content/2_technical-skills.md \
       ./content/aem-fragments/3_profile.md \
       ./content/4.1_employment_java2.md \
       ./content/aem-fragments/4.2_employment_aem.md \
       ./content/full-stack-fragments/4.3_employment_java1.md \
       ./content/5_education.md \
       ./content/6_interests-and-activities.md"

docker run --rm \
       --volume "$(pwd):/data" \
       --user $(id -u):$(id -g) \
       pandoc/core \
       $files \
       -o ./output/AEM_Developer/Lawrence_Reynolds_CV_AEM_Developer_$(date +%F).docx \
       --data-dir=/data/templates \
       --reference-doc=/data/templates/custom-reference.docx

docker run --rm \
       --volume "$(pwd):/data" \
       --user $(id -u):$(id -g) \
       pandoc/core \
       $files \
       -o ./output/AEM_Developer/Lawrence_Reynolds_CV_AEM_Developer_$(date +%F).md