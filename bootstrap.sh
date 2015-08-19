#!/usr/bin/env bash

# Add the RStudio repository for R
add-apt-repository "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 51716619E084DAB9

# Add the cran2deb4ubuntu PPA
add-apt-repository -y ppa:marutter/c2d4u

# Make sure the system is up-to-date
apt-get update
apt-get upgrade -y 

# Install development dependencies, dependencies needed for --check-as-cran,
# or libraries that R packages use (libcurl, gdal)
apt-get build-dep -y r-base-core
apt-get install -y \
  libcurl4-openssl-dev \
  libxml2-dev qpdf \
  texlive-fonts-recommended \
  texlive-humanities \
  texlive-latex-extra \
  texinfo \
  build-essential \
  gdal-bin \
  libgdal-dev \
  libproj-dev \
  libxml2-dev \
  pandoc \
  git

# Install basic R
apt-get install -y r-base r-base-core r-base-dev

# Permissions for R's package library
sudo adduser vagrant staff

# Install binary packages 
apt-get install \
  r-cran-XML \
  r-cran-devtools \
  r-cran-dplyr \
  r-cran-ggmap \
  r-cran-ggplot2 \
  r-cran-httr \
  r-cran-jsonlite \
  r-cran-knitr \
  r-cran-magrittr \
  r-cran-maptools \
  r-cran-rgeos \
  r-cran-testthat \
  r-cran-tidyr \
  r-cran-xml2 

# Install R packages
Rscript /vagrant/install-r-packages.R



