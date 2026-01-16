#!/bin/bash

cvName=Lawrence_Reynolds_CV_Java_Developer_$(date +%F)
secureConfigDir=../Job-Application-Tools-Secure/cv-generator-config
luaFilterFileName=replaceSensitiveInfo-custom.lua
referenceDocFileName=template-custom.docx

sh ./scripts/generate-cv-java.sh $cvName $secureConfigDir $luaFilterFileName $referenceDocFileName
sh ./scripts/generate-cv-aem.sh $cvName $secureConfigDir $luaFilterFileName $referenceDocFileName
sh ./scripts/generate-cv-fullstack.sh $cvName $secureConfigDir $luaFilterFileName $referenceDocFileName