#!/bin/bash

cvNamePrefix=Lawrence_Reynolds
secureConfigDir=../Job-Application-Tools-Secure/cv-generator-config
luaFilterFileName=replaceSensitiveInfo-custom.lua
referenceDocFileName=template-custom.docx

sh ./scripts/generate-cv-java.sh $cvNamePrefix $secureConfigDir $luaFilterFileName $referenceDocFileName
sh ./scripts/generate-cv-aem.sh $cvNamePrefix $secureConfigDir $luaFilterFileName $referenceDocFileName
sh ./scripts/generate-cv-fullstack.sh $cvNamePrefix $secureConfigDir $luaFilterFileName $referenceDocFileName