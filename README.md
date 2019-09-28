#  vagrant-logging

vagrant starter kit 

## Requirements
    Virtualbox                        => https://www.virtualbox.org
    Vagrant                           => http://www.vagrantup.com
    vagrant-hostmanager               => vagrant plugin install vagrant-hostmanager
    vagrant-cachier  (optional)       => vagrant plugin install vagrant-cachier
    vagrant-puppet-install (optional) => vagrant plugin install vagrant-puppet-install
    
## Preparation
    git submodule update --init
    
## Setup
    vagrant up

## Inspec tests

    bundle exec rake
    bundle exec rake inspec[proxy] 

## TLDR
    
    - name: elk 7.x
      public_vhosts:
        - http://elk.logging.vagrant
    - name: od, opendistro
      public_vhosts:
        - http://od.logging.vagrant

