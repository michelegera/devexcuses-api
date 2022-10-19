# devexcuses-api

[![Build status](https://github.com/michelegera/devexcuses-api/actions/workflows/build.yml/badge.svg)](https://github.com/michelegera/devexcuses-api/actions/workflows/build.yml)

> What’s your excuse?

`devexcuses-api` provides a modern, RESTful, scalable solution to developers’
common problem of finding an excuse to justify their sloppy work.

Please see https://api.devexcus.es/.

API documentation and examples are coming soon.

## Installation

    bundle install
    rails db:setup

    # SSL support in development, defaults to port 9292
    brew install mkcert
    brew install nss
    mkcert -install
    mkcert localhost

## Run

    rails server

## Test

    bundle exec rspec

## In the wild

This API is used to power the following projects:

- [Wasp `Dev Excuses app` tutorial][wasp]

## Contributing

To add a new excuses:

1. Fork the repository into your account
2. Branch into a feature branch `feature/your-excuse`
3. Add excuses, using `db/seeds.rb`.
4. Push to your fork and submit a PR.

All contributions are very welcome.

[wasp]: https://wasp-lang.dev/docs/tutorials/dev-excuses-app
