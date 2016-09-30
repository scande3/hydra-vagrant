# Applied Linked Data Prerequisites

The general goal is to get a curation concerns application up and running with a blank fedora and solr to point to. We will use the app name “Ldata” for this sample. There are two ways to go about this: use a provided vagrant or setup your machine to this state. If you have any questions or errors, please contact me at sanderson@bpl.org . This code is a customized fork of hydra-vagrant.

## Requirements

* [Vagrant](https://www.vagrantup.com/) version 1.8.5+
* [VirtualBox](https://www.virtualbox.org/)

You will need to have Vagrant installed on your machine. You can get that from: https://www.vagrantup.com/downloads.html

You will need to have some type of visualization software. On Ubuntu, this can be done by running: sudo apt-get install VirtualBox

## Setup

1. `git clone https://github.com/scande3/hydra-vagrant.git`
2. `cd hydra-vagrant`
3. `vagrant up`

You can shell into the machine with `vagrant ssh` or `ssh -p 2222 vagrant@localhost`

## Using the App

* In three seperate command prompt windows, run "vagrant ssh". Then do one of the following in each of them in order (waiting for the previous to finish):
  * `cd ldata`
  * `solr_wrapper -p 8983`

  * `cd ldata`
  * `fcrepo_wrapper -p 8984`

  * `cd ldata`
  * `rails server -b 0.0.0.0`

## Environment

* Ubuntu 16.04 64-bit base machine
* [CurationConcerns](https://github.com/projecthydra/curation_concerns): [http://localhost:3000](http://localhost:3000)
* [Solr 6.2.0](http://lucene.apache.org/solr/): [http://localhost:8983/solr/](http://localhost:8983/solr/)
* [Fedora 4.6.0](http://fedorarepository.org/): [http://localhost:8984/](http://localhost:8984/)

## Thanks

This VM is a modified version of the [Hydra Vagrant](https://www.vagrantup.com/downloads.html), which based on [Fedora 4 Vagrant](http://github.com/fcrepo4-exts/fcrepo4-vagrant), with borrowings from the [UCSD DAMS Vagrant](https://github.com/ucsdlib/dams-vagrant).
