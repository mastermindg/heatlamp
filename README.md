# heatlamp Cookbook

[![Build Status](https://travis-ci.org/chef-cookbooks/heatlamp.svg?branch=master)](https://travis-ci.org/chef-cookbooks/heatlamp [![Cookbook Version](https://img.shields.io/cookbook/v/heatlamp.svg)](https://supermarket.chef.io/cookbooks/heatlamp)

The heatlamp Cookobook is a role cookbook that provides a LAMP (Linux, Apache, MySQL, PHP)server using the most recent MySQL, Apache and PHP cookbooks

Currently we are using the following versions:

- MySQL 8.0.4 https://github.com/chef-cookbooks/mysql
- Aapach2 3.2.2 https://github.com/svanzoest-cookbooks/apache2/
- PHP 2.1.1 https://github.com/chef-cookbooks/php

Helper Cookbooks:

- Database (Creates the database and users) 6.0.0 https://github.com/chef-cookbooks/database

## Requirements

- Chef 12.5 or higher
- Network accessible package repositories
- 'recipe[selinux::disabled]' on RHEL platforms

## Component Versions

- MySQL 5.7
- Apache 2.4
- PHP 7.0 (Installs from source to avoid package conflicts on earlier distros)
