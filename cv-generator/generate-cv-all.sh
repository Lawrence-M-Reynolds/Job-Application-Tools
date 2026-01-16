#!/bin/bash

cvName=Lawrence_Reynolds_CV_Java_Developer_$(date +%F)
referenceDoc=/data/templates/template-custom.docx
luaFilter=/data/scripts/replaceSensitiveInfo-custom.lua

sh ./scripts/generate-cv-java.sh $cvName $referenceDoc $luaFilter
sh ./scripts/generate-cv-aem.sh $cvName $referenceDoc $luaFilter
sh ./scripts/generate-cv-fullstack.sh $cvName $referenceDoc $luaFilter