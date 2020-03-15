# The Great Pizza Shop Service

This is a project about a Pizza Shop Service, that is an admission test for the Truextend company.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Ruby version: 2.6.5
Ruby on Rails version: 6.0.2.1
Database: sqlite3 1.4

## Installing Ruby
We recommend to use [RVM](https://rvm.io) to handle the version of ruby, but [RBENV](https://github.com/rbenv/rbenv) can be used too.
We suggest to use `rvm` and after installing it, let's do some step:
```
rvm install 2.6.5
rvm use 2.6.5 --default
ruby -v
```
In the root path we should to create a gemset only to have the gems used in this project. Let's create and use the gemset.
The following line creates a new gemset and use it.
```
rvm use 2.6.5@pizza_shop_service --create
```
The last step is to install Bundler
```
gem install bundler
```