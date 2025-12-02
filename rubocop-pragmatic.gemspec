require_relative "lib/rubocop/pragmatic/version"

Gem::Specification.new do |spec|
  authors = {
    "Ryan McGeary"        => "ryan@mcgeary.org",
    "Beshad Talayeminaei" => "btalayeminaei@gmail.com ",
    "Dylan Poole"         => "dylanb0708@gmail.com",
  }
  username = "rmm5t"

  spec.name     = "rubocop-pragmatic"
  spec.version  = Rubocop::Pragmatic::VERSION
  spec.authors  = authors.keys
  spec.email    = authors.values
  spec.license  = "MIT"
  spec.summary  = "Pragmatic Ruby Styling for Projects."
  spec.homepage = "https://github.com/#{username}/#{spec.name}"
  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata = {
    "homepage_uri"          => spec.homepage,
    "bug_tracker_uri"       => "#{spec.homepage}/issues",
    "changelog_uri"         => "#{spec.homepage}/blob/main/CHANGELOG.md",
    "source_code_uri"       => spec.homepage,
    "rubygems_mfa_required" => "true",
  }

  spec.files = Dir.glob("{lib}/**/*") + Dir.glob("{LICENSE,README}*") + Dir.glob("*.yml")
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop",             "~> 1.81"
  spec.add_dependency "rubocop-faker",       "~> 1.3"
  spec.add_dependency "rubocop-md",          "~> 2.0"
  spec.add_dependency "rubocop-minitest",    "~> 0.38"
  spec.add_dependency "rubocop-packaging",   "~> 0.6"
  spec.add_dependency "rubocop-performance", "~> 1.26"
  spec.add_dependency "rubocop-rake",        "~> 0.7"
  spec.add_dependency "rubocop-rspec",       "~> 3.8"

  # More Rails specific
  spec.add_dependency "rubocop-capybara",    "~> 2.22"
  spec.add_dependency "rubocop-erb",         "~> 0.7"
  spec.add_dependency "rubocop-factory_bot", "~> 2.28"
  spec.add_dependency "rubocop-haml",        "~> 0.3"
  spec.add_dependency "rubocop-rails",       "~> 2.34"
end
