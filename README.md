## Vagrantfile for R development

Lincoln Mullen | <http://lincolnmullen.com> |
<lincoln@lincolnmullen.com>

This repository provides files for setting up a [Vagrant][] environment
for R development. You will first need to install Vagrant and some
virtualization software such as [VirtualBox][]. Then you just need to
run `vagrant up` in the same directory as the `Vagrantfile`. Running
`vagrant ssh` will connect you to the virtual machine. You can access
the local directory on your computer through the virtual machine by
navigating to `/vagrant/`.

Vagrant will setup an installation of Ubuntu 14.04. Note that the
virtual machine will have only 2GB of RAM allotted to it. This is about
the bare minimum for running `R CMD build` and `R CMD check`. If you
want to do analysis, then you'll probably want to increase this line in
the `Vagrantfile`.

The file `bootstrap.sh` will provision the Ubuntu virtual machine with
various dependencies need for R development, like [LaTeX][], as well as
libraries that I commonly use such as [GDAL/OGR][]. The bootstrap
process will also run the file `install-r-packages.R` which includes a
list of packages that I commonly use. If you want to check a package
that you are developing, you will need to install all of its
dependencies. You can do that by adding to this file.

### TODO

-   Install [RStudio Server][] and use port forwarding in Vagrant to be
    able to access RStudio through localhost.

### License

This project is released under the MIT License:
<http://lmullen.mit-license.org/>

  [Vagrant]: https://www.vagrantup.com/
  [VirtualBox]: https://www.virtualbox.org/
  [LaTeX]: http://www.latex-project.org/
  [GDAL/OGR]: http://www.gdal.org/
  [RStudio Server]: http://www.rstudio.com/products/rstudio/#Server
