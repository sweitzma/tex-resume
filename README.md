# Latex Resume
This repo contains the TeX source code and docker references to build it consistantlyl

## How to make resume
We will use a personal docker image with a TeX environment for this project. We can compile the TeX source into a pdf with `pdflatex` which is installed on the `tex` image. By running
```
$ make pdf # or simply `make`
```
we mount the `/src/` folder into the Docker image's file system and use the TeX tools installed on the image to create the final PDF.

We should see the resulting PDF copied and named in the root directory of this repo.

## System requirements
* `docker`
* `make`

