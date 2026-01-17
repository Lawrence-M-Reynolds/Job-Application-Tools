#!/bin/bash

cvNamePrefix=$1
secureConfigDir=$2
luaFilterFileName=$3
referenceDocFileName=$4

cvTypeName=Java_Developer

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
       