### Rossmann Computer Parts

This web app is being created for the Rossmann Group as commissioned according to agreed upon specs.  This site aims to improve upon the existing app by serving the entire computer parts catalog in a more streamlined way.

### Ruby version

* ruby 2.4.1p111 (2017-03-22 revision 58053)

### System dependencies

* Ruby
* Rails
* Git
* postgreSQL
* bundler
* rake

### Installation

* clone the repository from https://github.com/Umitosan/rossman-computer-parts.git
* start postgres in a separate terminal if you don't already have it running as a service.  `$ postgres` to start
* navigate to the repo directory
* run `$ bundle install` to install all the necessary gems
* create the database `$ rake db:create`
* the db/seeds.rb file will take care of populating the correct data
* `rake db:migrate`
* `rake db:test:prepare` (if you want to use rSpec and tests)
* `rails s` to serve the app locally
* point your browser to `localhost:3000` 

### Database creation

### Database initialization

### How to run the test suite

### Deployment instructions
