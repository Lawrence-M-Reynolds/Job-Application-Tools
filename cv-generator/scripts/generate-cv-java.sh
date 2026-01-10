#!/bin/bash

files="./content/1_header.md \
       ./content/2_technical-skills.md \
       ./content/3_profile.md \
       ./content/4.1_employment_java2.md \
       ./content/4.2_employment_aem.md \
       ./content/4.3_employment_java1.md \
       ./content/4.4_employment_chemistry.md \
       ./content/5_education.md \
       ./content/6_interests-and-activities.md"

docker run --rm \
       --volume "$(pwd):/data" \
       --user $(id -u):$(id -g) \
       pandoc/core \
       $files \
       -o ./output/Java_Developer/Lawrence_Reynolds_CV_Java_Developer_$(date +%F).docx \
       --data-dir=/data/templates \
       --reference-doc=/data/templates/custom-reference.docx

docker run --rm \
       --volume "$(pwd):/data" \
       --user $(id -u):$(id -g) \
       pandoc/core \
       $files \
       -o ./output/Java_Developer/Lawrence_Reynolds_CV_Java_Developer_$(date +%F).md