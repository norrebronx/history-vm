#!/usr/bin/env bash

# Add the RStudio repository for R
add-apt-repository "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 51716619E084DAB9

# Make sure the system is up-to-date
apt-get update
apt-get upgrade -y 

# Install development dependencies, dependencies needed for --check-as-cran,
# or libraries that R packages use (libcurl, gdal)
apt-get build-dep -y r-base-core
apt-get install -y libcurl4-openssl-dev libxml2-dev qpdf texlive-full build-essential gdal-bin libgdal-dev libproj-dev libxml2-dev git

# Install basic R
apt-get install -y r-base r-base-core r-base-dev

# Permissions for R's package library
sudo adduser vagrant staff

# Install R packages
Rscript /vagrant/install-r-packages.R



