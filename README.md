# Court fees

This app is a super rough demo of what would could be done to improve
the current situation with regards to court fees.

If you're looking for code quality, don't bother.

## Install

Clone the repo and then:

* ./bin/bundle install
* ./bin/rake db:create db:migrate
* ./bin/rails server

## Usage

As admin, login in via **/admin** and edit the data.

The other two views are **/fees** and **/forms**.

## Models

The way models relate to each other

```
              .---------.      Fees - hold the toplevel
              |  Fees   |             name for the fees
              `---------'
                   |
                   |
                  \|/
                   '
             .-----------.     FeeTypes - hold the sub-categories of fees
             | Fee Types |
             `-----------'
                   |
                   |
                  \|/
                   '
             .------------.    FormTypes - map the human names to form numbers
             | Form Types |
             `------------'
```
