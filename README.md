# Sashimi QA
==========

Cucumber tests by QA for sashimi project

## Set up

Install the dependencies
```ruby
bundle install
```
## Config

There is an ENV variable called ***BASE_URL*** that can be use to specify the url of the site. By default is set up to "http://www.which.co.uk/beta/reviews/tv"

## Run

You can run it just with

```ruby
bundle exec cucumber
```

To override the base url

```ruby
BASE_URL=localhost:3000 bundle exec cucumber --tags ~@wip
```


