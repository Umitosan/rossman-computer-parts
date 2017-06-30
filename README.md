# Rossmann Computer Parts

This web app is being created for the Rossmann Group as commissioned according to agreed upon specs.  This site aims to improve upon the existing app by serving the entire computer parts catalog in a more streamlined way.

### Dependencies / Prerequisites

* [Git](https://git-scm.com/)
* [Ruby](https://www.ruby-lang.org/en/downloads/) v2.4.1p111
* [Rails](https://github.com/rails/rails) v5.0.4
* [postgreSQL](https://www.postgresql.org/)
* [bundler](http://bundler.io/)
* [rake](https://github.com/ruby/rake)

### Installation

* clone the repository from https://github.com/Umitosan/rossman-computer-parts.git
* start postgres in a separate terminal if you don't already have it running as a service.  `$ postgres` to start
* navigate to the repo directory
* run `$ bundle install` to install all the necessary gems

### Database creation/initialization

* create the database `$ rake db:create`
* the db/seeds.rb file will take care of populating the correct data
* `rake db:migrate`
* `rake db:test:prepare` (optional, if you want to use testing)

### Serve the app

* `rails s` to serve the app locally
* point your browser to `localhost:3000`

### Specifications

| Behavior | Input | Output |
|----------|:-----:|:------:|
| The app has a home page which shows basic info about Rossmann Group | user navigates to home | the page displays a section called 'about' with info about the company |
| The home page shows the 3 most recently added Products | user navigates to the home page | the page displays a section called 'recently added' showing the 3 most recently added products from an admin |
| The home page shows the product with most reviews | user navigates to the home page | the page displays a section called 'top product' displaying the product with the most reviews |
| The app has a products page which lists all Products | user navigates to the products page | all products are displayed in a list |
| The products have a details page linked to them | the user clicks on an individual product | the browser navigates to another page displaying details about the specific product |
| The details page shows reviews | the user navigates to a product detail page | all reviews for that product are lists along with the other details |
| The app allows users to add reviews to a product | user clicks on a 'add review' button below a product listing | the user is shown a form and submit button to fill out to add their review |
| The app has an admin page | admin clicks on the 'admin' link in the nav bar | the admin page is displayed with all products listed |
| The app allows admins to add and update products | the admin clicks on buttons 'add' or 'update' | a form is displayed with a button to submit the changes to the database |
| The app allows admins to delete products | the admin clicks on button 'delete' | the product is deleted from the database along with it's details and reviews |

### Known Bugs

* N/A at this time

### License

*open source GPL & MIT*

```
Copyright (c) 2017 **Dominic Brown**
```
