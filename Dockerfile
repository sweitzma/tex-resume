FROM ubuntu:18.04

WORKDIR /build/

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
  texlive-latex-base \
  texlive-fonts-recommended \
  texlive-fonts-extra \
  texlive-latex-extra

WORKDIR /mnt/

ENTRYPOINT ["pdflatex"]
