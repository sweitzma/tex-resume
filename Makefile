.PHONY: all image

# Open PDF in Preview if on MacOS
UNAME := $(shell uname)
ifeq ($(UNAME), Darwin)
	OPEN := "open sam-weitzman-resume.pdf"
else
	OPEN := ":"
endif

all:
	docker run --rm -v $$(pwd)/src/:/mnt/ tex resume.tex
	cp src/resume.pdf sam-weitzman-resume.pdf
	eval $(OPEN)

image:
	docker build -f Dockerfile -t tex .
