# jquery_mockjax_rails

This gem provides:

  * [jQuery Mockjax 1.5.2](https://github.com/appendto/jquery-mockjax)
  * ajax mocking helper in your Rspec integration tests

## Requirements
This gem requires Rails 3.1 or greater, with assets pipeline enabled and capybara integration tests support.

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
before do
  stub_ajax url: '/api/path', responseText: { message: 'message' }
end
```

Once the browser has been lauched, open the JS console and test the mocked response

```javascript
$.getJSON('/api/path', function(data) { console.log(data.message) }); #=> message
```

## Acknowledgements

The original idea has come from [ejholmes](https://github.com/ejholmes/mockjax), however, the gem has been deprecated and does not work with current Rails 3 application using rspec/capybara integration test, so I've decided to re-write the gem from scratch.
Most of the core code pieces have been emerged from [ejholmes](https://github.com/ejholmes/mockjax)'s work.

## Contributing

Pull requests are more than welcome. Before submitting pull requests, please make sure your changes are covered with tests.