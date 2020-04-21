.DEFAULT_GOAL := pdf

# Open PDF in Preview if on MacOS
UNAME := $(shell uname)
ifeq ($(UNAME), Darwin)
	OPEN := "open sam-weitzman-resume.pdf"
else
	OPEN := ":"
endif

pdf: ## generate a PDF from the TeX source
	docker run --rm -v $$(pwd)/src/:/mnt/ sweitzma/tex:base resume.tex
	cp src/resume.pdf sam-weitzman-resume.pdf
	eval $(OPEN)

help: ## show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: pdf help
