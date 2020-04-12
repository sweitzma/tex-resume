.PHONY: all image

all:
	docker run --rm -v $$(pwd)/src/:/mnt/ tex resume.tex
	cp src/resume.pdf sam-weitzman-resume.pdf

image:
	docker build -f Dockerfile -t tex .
