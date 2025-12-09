# Pragmatic Ruby Styling for Projects

[![Gem Version](http://img.shields.io/gem/v/rubocop-pragmatic.svg)](https://rubygems.org/gems/rubocop-pragmatic)
[![CI](https://github.com/rmm5t/rubocop-pragmatic/actions/workflows/ci.yml/badge.svg)](https://github.com/rmm5t/rubocop-pragmatic/actions/workflows/ci.yml)
[![Gem Downloads](https://img.shields.io/gem/dt/rubocop-pragmatic.svg)](https://rubygems.org/gems/rubocop-pragmatic)

Setting up a new project with [Rubocop](https://rubocop.org/) can take some
time. There are several decisions to make and many plugins to consider. This
gem attempts to alleviate some of this hassle by both curating a default set
of plugins and a default set of config overrides. Rubocop's defaults are
usually top notch, but there are a few areas where the cops might be
considered a little too pedantic and/or strict. This gem attempts to find a
reasonable and _pragmatic_ middle ground to get a new project off the ground
and running well with Ruby's favorite linter.

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

`rubocop-pragmatic` is opionated about minitest, but offers the option to customize with `rubocop-rspec` and `rubocop-rspec_rails`:

```yml
inherit_gem:
  rubocop-pragmatic:
    - rails.yml
    - rubocop-rspec.yml
    - rubocop-rspec_rails.yml

Minitest:
  Enabled: false

# Your own specialized rules go here
```

## Fail Level Recommendation

It's also recommended to set `--fail-level=convention`. `Metrics` and
`Performance` cops run at the "refactor" level while all other cops run at the
"convention" level. This is intentional as to not return an failure exit code
for `Metrics` or `Performance` cops. e.g. Sometimes, these cops need to be
ignored while dealing with hotfixes, etc.

This can be set on a project by adding a `.rubocop` file in the root of your
project:

```txt
--fail-level=convention
```

## License

[MIT License](https://rmm5t.mit-license.org/)
