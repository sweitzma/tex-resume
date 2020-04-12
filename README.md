# Latex Resume
This repo contains the TeX source code and Docker tooling to consistantly build my resume.

## How to make resume
First we need the docker image `tex`. We can build this by running
```
$ make image
```
which will call `docker build ...` and not much else. Now we can compile the TeX source into a pdf with `pdflatex` which is installed on the `tex` image. By running
```
$ make
```
we mount the `/src/` folder into the Docker image's file system and use the TeX tools installed on the image to create the final PDF.

We should see the resulting PDF copied and named in the root directory of this repo.

## System requirements
* `docker`
* `make`


