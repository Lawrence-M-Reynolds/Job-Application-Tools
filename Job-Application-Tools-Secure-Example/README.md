This directory holds example configuration for the secure data such as email addresses and phone numbers. This will be used by default but should be overridden by copying this file:

`Job-Application-Tools/cv-generator/config.local.sh.example`

to this (which is defined in git ignore):
`Job-Application-Tools/cv-generator/config.local.sh`

You can then set the secure data to a location that is not committed to a public repository. For this you can make a copy of this directory and use a private [GIT submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules). The new name for the directory should be:

`./Job-Application-Tools-Secure`
