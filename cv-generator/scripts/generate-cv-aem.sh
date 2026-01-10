#!/bin/bash

docker run --rm \
       --volume "$(pwd):/data" \
       --user $(id -u):$(id -g) \
       pandoc/core \
       ./content/1_header.md \
       ./content/2_technical-skills.md \
       ./content/3_profile.md \
       ./content/4_employment.md \
       ./content/5_education.md \
       ./content/6_interests-and-activities.md \
       -o ./output/AEM_Developer/Lawrence_Reynolds_CV_AEM_Developer_$(date +%F).docx \
       --data-dir=/data/templates \
       --reference-doc=/data/templates/custom-reference.docx

docker run --rm \
       --volume "$(pwd):/data" \
       --user $(id -u):$(id -g) \
       pandoc/core \
       ./content/1_header.md \
       ./content/2_technical-skills.md \
       ./content/3_profile.md \
       ./content/4_employment.md \
       ./content/5_education.md \
       ./content/6_interests-and-activities.md \
       -o ./output/AEM_Developer/Lawrence_Reynolds_CV_AEM_Developer_$(date +%F).md