# AceBook
by Makers Academy Remote July 2017

### About
Our international cohort of 12 programmers from 4 countries working in 2 timezones spent a week making this clone of a popular social media website.

---
## Visit our Heroku site
https://acebook-remote-july.herokuapp.com/

## Or run locally
View the repository [here](https://github.com/makersacademy/acebook-remote-july-2017) on GitHub

Clone the repo. Then:

```bash
bundle install
bin/rails db:create
bin/rails db:migrate
```
#### To run the tests
```bash
bundle exec rspec
```

#### To connect the photo hosting service on AWS S3
* install imagemagick (for Mac run `brew install imagemagick` for Windows use the [binary release](http://www.imagemagick.org/script/binary-releases.php#windows)
* create .env file in your project root
* populate the following variables with your own S3 credentials:
```
BUCKET_NAME=<your_bucket_name>
ACCESS_KEY_ID=<your_access_key_id>
SECRET_ACCESS_KEY=<your_secret_access_key>
AWS_REGION=<your_aws_region>
```

### To view in browser
```bash
bin/rails server
```
This will start the server at localhost:3000

---
## Processes
* XP (Extreme Programming)
* Agile
* Pair programming
* TDD
* Remote collaboration

---
## Technologies used
* [Ruby](https://www.ruby-lang.org/en/) as the main back-end language
* [Rails](http://rubyonrails.org/) for the framework
* [Travis CI](https://travis-ci.org/)
* [PostgreSQL](https://www.postgresql.org/) for handling databases
* [GitHub](https://github.com/makersacademy/acebook-remote-july-2017) for storing our work
* [Trello](https://trello.com/) for tracking and organising workflow
* [AWS S3](https://aws.amazon.com/) for photo storage
* [Heroku](https://acebook-remote-july.herokuapp.com/
) for hosting our website
* CSS and Bootstrap to make it look pretty
* Git for version managing

## Assets

## Styling and Imagery
* Icomoon.io for creating our own icon font set with SVG icons
* Bootstrap for styling and layout (please see getbootstrap.com/docs/4.0/layout/grid/)
* icoconverter.com for favicon generation
* Paperclip & AWS S3 for photos upload
* Imagemagick for photo resizing

### A note on Icomoon and the custom font icon set
* We followed this tutorial: http://mediatemple.net/blog/tips/creating-implementing-icon-font-tutorial/
* Importantly, the fonts folder needs to be in Assets, application.css needs to be renamed to application.css.scss and each @font-face src url needs to be called as a font-url. Without these changes, the icons will not render on Heroku.
* To render icons, simply use `<span class="icon-name" id="icon"></span>`, where name is the name of the icon (the list will be in application.css.scss)
