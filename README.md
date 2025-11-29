# Pragmatic Ruby Styling for Projects

[![Gem Version](https://badge.fury.io/rb/rubocop-pragmatic.svg)](https://badge.fury.io/rb/rubocop-pragmatic) [![CI](https://github.com/rmm5t/rubocop-pragmatic/actions/workflows/ci.yml/badge.svg)](https://github.com/rmm5t/rubocop-pragmatic/actions/workflows/ci.yml)

## Installation

```ruby
gem "rubocop-pragmatic", require: false, group: [:development]
```

Run `bundle`, then `bundle binstubs rubocop`.

Add a default `.rubocop.yml` file in the root of your Rails application with:

```yml
inherit_gem:
  rubocop-pragmatic: rails.yml

# Your own specialized rules go here
```

For a ruby gem or project (not using Rails):

```yml
inherit_gem:
  rubocop-pragmatic: ruby.yml

# Your own specialized rules go here
```

Or to customize your own combination:

```yml
inherit_gem:
  rubocop-pragmatic:
    - rubocop.yml
    - rubocop-factory_bot.yml
    - rubocop-md.yml
    - rubocop-minitest.yml
    - rubocop-performance.yml

inherit_mode:
  merge:
    - Exclude

# Your own specialized rules go here
```

## License

[MIT License](https://rmm5t.mit-license.org/)
