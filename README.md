# dev-excuses-api

`dev-excuses-api` provides a modern, RESTful, scalable solution to developers’
common problem of finding an excuse to justify their sloppy work.

Please see https://devexcus.es for API documentation and examples.

## Installation

    bundle install
    rails db:setup

    # SSL support in development, defaults to port 9292
    brew install mkcert
    mkcert -install
    mkcert localhost

## Run

    rails server

## Test

    bundle exec rspec

## Running on Ruby 2.7

To silence Ruby 2.7 deprecation warnings:

    export RUBYOPT='-W:no-deprecated -W:no-experimental'

## Contributing

To add a new excuses:

1. Fork the repository into your account
2. Branch into a feature branch `feature/your-excuses`
3. Add excuses, using `db/seeds.rb`.
4. Push to your fork and submit a PR.

All contributions are very welcome.
