source 'https://rubygems.org'
ruby '2.7.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2.2'
gem 'bootsnap', require: false
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.12'
gem 'active_model_serializers', '~> 0.10.7'
gem 'will_paginate', '~> 3.1.6'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.7'
  gem 'dotenv-rails'
end

group :test do
  gem 'factory_bot_rails', '~> 4.8'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'faker'
  gem 'database_cleaner'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
