---
title: Testing a Rails Application
layout: page
---

**Slides:** [https://speakerdeck.com/robzenn92/tdd-and-bdd-in-ruby](https://speakerdeck.com/robzenn92/tdd-and-bdd-in-ruby)

## Setup

### RSpec

We are going to use the `rspec-rails` gem to test various aspects of our web application. Follow [these instructions](http://www.rubydoc.info/gems/rspec-rails/frames).

```ruby
group :development, :test do
  gem 'rspec-rails', '~> 3.5'
end
```

```sh
bundle install
rails g rspec:install
```

In Rails 4+ it's a good idea to also execute

```
bundle binstubs rspec-core
```

### ~~FactoryGirl~~FactoryBot and FFaker

```ruby title:"Gemfile"
group :test, :development do
  gem 'factory_bot_rails'
  gem 'ffaker'
end
```

Put your factories in `spec/factories/` and use them like in the example below

```ruby title:'spec/models/user.rb'
describe User do
  it 'should create a user with a name and a surname' do
    u = FactoryBot.create(:user)
    expect(u).to be_valid
  end
end
```

### Capybara and Cucumber

```ruby
group :test do
  gem 'cucumber-rails', require: false
  gem 'selenium-webdriver'
end
```

Don't forget to run

```
rails g cucumber:install
```

After installing the gems.

Put your feature definitions in `features/` and your step definitions in `features/step_definitions`.
