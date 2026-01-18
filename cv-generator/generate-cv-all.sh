#!/bin/bash

cvNamePrefix=Lawrence_Reynolds
secureConfigDir=../Job-Application-Tools-Secure/cv-generator-config
luaFilterFileName=replaceSensitiveInfo-custom.lua
referenceDocFileName=template-custom.docx

#### Java Developer CV 
cvTypeName=Java_Developer

files="./content/1_header.md \
       ./content/2_profile.md \
       ./content/3_technical-skills.md \
       ./content/4.1_employment_java2.md \
       ./content/4.2_employment_aem.md \
       ./content/4.3_employment_java1.md \
       ./content/5_education.md \
       ./content/6_interests-and-activities.md"

sh ./scripts/generate-cv.sh $secureConfigDir $luaFilterFileName $referenceDocFileName $cvTypeName $cvNamePrefix "$files"

#### Fullstack Developer CV 
cvTypeName=FullStack_Developer

files="./content/full-stack-fragments/1_header.md \
       ./content/full-stack-fragments/2_profile.md \
       ./content/3_technical-skills.md \
       ./content/4.1_employment_java2.md \
       ./content/full-stack-fragments/4.2_employment_aem.md \
       ./content/full-stack-fragments/4.3_employment_java1.md \
       ./content/5_education.md \
       ./content/6_interests-and-activities.md"

sh ./scripts/generate-cv.sh $secureConfigDir $luaFilterFileName $referenceDocFileName $cvTypeName $cvNamePrefix "$files"

#### AEM Developer CV 
cvTypeName=AEM_Developer

files="./content/aem-fragments/1_header.md \
       ./content/aem-fragments/2_profile.md \
       ./content/aem-fragments/3_technical-skills.md \
       ./content/4.1_employment_java2.md \
       ./content/aem-fragments/4.2_employment_aem.md \
       ./content/full-stack-fragments/4.3_employment_java1.md \
       ./content/5_education.md \
       ./content/6_interests-and-activities.md"

sh ./scripts/generate-cv.sh $secureConfigDir $luaFilterFileName $referenceDocFileName $cvTypeName $cvNamePrefix "$files"