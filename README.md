#  vagrant-logging

vagrant starter kit 

## Requirements
    Virtualbox                        => https://www.virtualbox.org
    Vagrant                           => http://www.vagrantup.com
    vagrant-hostmanager               => vagrant plugin install vagrant-hostmanager
    vagrant-puppet-install            => vagrant plugin install vagrant-puppet-install
    vagrant-cachier  (optional)       => vagrant plugin install vagrant-cachier
    
## Preparation
    git submodule update --init
    
## Setup
    vagrant up
    (cd terraform; terraform apply -auto-approve)

    This project doesnt create the required s3 bucket automatically during the puppet run. This will need to be done manually or by running the provided terraform code.

## Inspec tests

    bundle exec rake
    bundle exec rake inspec[minio] 

## TLDR
    
    - name: minio
      public_vhosts:
        - http://minio.logging.vagrant:9090
    - name: loki
      public_vhosts:
        - http://loki.logging.vagrant admin:secret
