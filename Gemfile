# frozen_string_literal: true

source 'https://rubygems.org'
ruby '3.0.1'

gem 'blueprinter'
gem 'bootsnap', require: false
gem 'oj'
gem 'pg'
gem 'puma'
gem 'rails', '~> 7.0.1'
gem 'will_paginate'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'rspec-rails'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen'
  gem 'rubocop-rails', require: false
  gem 'spring'
  gem 'spring-watcher-listen'
end
