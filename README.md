# jquery_mockjax_rails

[![Build Status](https://travis-ci.org/chautoni/jquery_mockjax_rails.png?branch=master)](https://travis-ci.org/chautoni/jquery_mockjax_rails)

This gem provides:

  * [jQuery Mockjax 1.5.2](https://github.com/appendto/jquery-mockjax)
  * Ajax mocking helper in your Rspec integration tests

## Requirements

  * Rails 3.1 or later
  * Assets pipeline enabled
  * jQuery
  * Rspec/Capybara integration tests

## Installation

Add the `jquery_mockjax_rails` gem to your Gemfile

```ruby
group :test do
  gem 'jquery_mockjax_rails'
end
```

And run `bundle install`

## Getting Started

Stub the ajax request in a `before` block

```ruby
describe 'My integration spec', js: true do

  before do
    stub_ajax url: '/api/path', responseText: { message: 'message' }
  end
end
```

Once the browser has been lauched, open the JS console and test the mocked response

```coffeescript
$.getJSON('/api/path', function(data) { console.log(data.message) }); # => message
```

## Acknowledgements

The original idea has come from [ejholmes](https://github.com/ejholmes/mockjax), however, the gem has been deprecated and does not work with current Rails 3 application using rspec/capybara integration test, so I've decided to re-write the gem from scratch.
Most of the core code pieces have been emerged from [ejholmes](https://github.com/ejholmes/mockjax)'s work.

## Contributing

Pull requests are more than welcome. Before submitting pull requests, please make sure your changes are covered with tests.