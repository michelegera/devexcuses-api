# frozen_string_literal: true

source 'https://rubygems.org'
ruby '3.1.1'

gem 'ahoy_matey'
gem 'blueprinter'
gem 'bootsnap', require: false
gem 'geocoder'
gem 'maxminddb'
gem 'oj'
gem 'pg'
gem 'puma'
gem 'rails', '~> 7.0.3.1'
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
  gem 'overcommit'
  gem 'rubocop-rails', require: false
  gem 'spring'
  gem 'spring-watcher-listen'
end
