#!/bin/bash

cvName=$1
referenceDoc=$2
luaFilter=$3

cvDirName=AEM_Developer

files="./content/aem-fragments/1_header.md \
       ./content/aem-fragments/2_profile.md \
       ./content/3_technical-skills.md \
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
       -o ./output/$cvDirName/$cvName.docx \
       --lua-filter=$luaFilter \
       --reference-doc=$referenceDoc

docker run --rm \
       --volume "$(pwd):/data" \
       --user $(id -u):$(id -g) \
       pandoc/core \
       $files \
       --lua-filter=$luaFilter \
       -o ./output/$cvDirName/$cvName.md