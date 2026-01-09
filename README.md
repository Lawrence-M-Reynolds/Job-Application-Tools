---
title: Pandoc CV file conversion.
subtitle: (Subtitle)
date: January 2026
---

# cv-source

## instructions

### Basic command
**docker container run [OPTIONS] IMAGE [COMMAND] [ARG...]**
docker run --rm \
       --volume "$(pwd):/data" \
       --user $(id -u):$(id -g) \
       pandoc/core README.md -o outfile.docx


### Use reference doc
https://pandoc.org/MANUAL.html

Use **--reference-doc=FILE|URL**
Create a **custom-reference.docx** first:
````
pandoc -o custom-reference.docx --print-default-data-file reference.docx
````
Update the sytles in this, but don't add/modify content.


docker run --rm -v "$(pwd):/data" --user $(id -u):$(id -g) pandoc/core \
  -o /data/templates/custom-reference.docx --print-default-data-file reference.docx

#### Generate

docker run --rm \
       --volume "$(pwd):/data" \
       --user $(id -u):$(id -g) \
       pandoc/core README.md -o outfile.docx \
       --data-dir=/data/templates \
       --reference-doc=/data/templates/custom-reference.docx


docker run --rm -v "$(pwd):/data" --user $(id -u):$(id -g) pandoc/core \
  --print-default-data-file reference.docx > /data/templates/reference.docx

**Creating CV**