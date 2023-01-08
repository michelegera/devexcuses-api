# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.2.0'

gem 'active_hash', '~> 2'
gem 'blueprinter'
gem 'bootsnap', require: false
gem 'oj'
gem 'puma'
gem 'rails', '~> 7.0.4'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'rspec-rails'
end

group :test do
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen'
  gem 'overcommit'
  gem 'rubocop-rails', require: false
  gem 'spring'
  gem 'spring-watcher-listen'
end
