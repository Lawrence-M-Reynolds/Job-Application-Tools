# CV Generator
This project is used to generate multiple versions of a CV. It allows:

- the common elements to be populated from the same template fragments, rather than having to repeat the same content.
- the styles, which are applied via template word file, from the content.
- the version to be managed via git.

Unfortunately it's not smart enough to know when to insert page breaks, at the beginning/end of paragraphs for example. So you should go through the generated files afterwards and insert the page breaks where appropriate.

## Project Structure

You can create/modify the content fragments stored in the following directory:

`cv-generator/content/`

You can then define how the content fragments are used to create the different versions of CV here:

`cv-generator/generate-cv-all.sh`

There is also a submodule which is described in more detail further down.

## Running the Application

Currently this project only has bash scripts so this can only run on a linux environment with docker.

After cloning the project you can generate the CVs by running:

````bash
cd cv-generator/
./generate-cv-all.sh 
````

This will output the file into the following directory:

`cv-generator/output`

### Secure SubModule
There is a private git submodule that stores a word document template to apply styles to the generated CVs as well as a lua script to inject sensitive data. Because this isn't accessible publicly, by default the project is configured to pick up example files from here:

`Job-Application-Tools-Secure-Example`

To configure your own lua scripts and template file you should:

1) Duplicate the `Job-Application-Tools-Secure-Example` directory with the name `Job-Application-Tools-Secure`. You can then configure the files in there as required.
2) Duplicate the `cv-generator/config.local.sh.example` to `cv-generator/config.local.sh`.

When running the scripts you should now see the following in the output:

> Notice: Loaded local configuration override.

*(You can also use the submodule to store final generated CV versions along with other job application related files.)*

#### Style Template
To modify the styles in the generated CVs you can modify them in this file. It's a bit awkward but if you open the files in the Microsoft word you need to modify the *styles* associated with each title/paragragh/etc. Modifying the title/paragraph elements directly won't take any effect.

#### Sensitive Information
Sensitive information, such as email addresses and phone numbers, are stored and injected via a script - [see example](Job-Application-Tools-Secure-Example/cv-generator-config/replaceSensitiveInfo-custom.lua). 

An example of where these properties are injected is in the header files - in the header files for example ([1_header.md](cv-generator/content/1_header.md))

So you can update the properties, or add more, in the lua script.