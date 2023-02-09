# devexcuses-api

[![Build status](https://github.com/michelegera/devexcuses-api/actions/workflows/build.yml/badge.svg)](https://github.com/michelegera/devexcuses-api/actions/workflows/build.yml)

> What’s your excuse?

`devexcuses-api` provides a modern, RESTful, scalable solution to developers’
common problem of finding an excuse to justify their sloppy work.

Visit https://api.devexcus.es/ to get your random excuse!

## Translations

The API is currently available in the following languages:

- English (default)
- French

To get a random excuse in a specific language, use a `locale` query parameter:

```bash
curl https://api.devexcus.es/?locale=fr
```

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

To add new excuses:

1. Fork the repository into your account
2. Branch into a feature branch `feature/your-excuse`
3. Add excuses at the bottom of `data/excuses.yml` using the following format:

   ```yaml
   - id: 55
       text_en: "I’m not getting any error codes."
       # …
   ```

4. Push to your fork and submit a PR.

To add a new language:

1. Fork the repository into your account
2. Branch into a feature branch, e.g. `i8n/it`
3. Add translated excuses in `data/excuses.yml` using the following format:

   ```yaml
   - id: 55
       text_en: "I’m not getting any error codes."
       # …
       text_it: "Non ricevo alcun codice di errore."
   ```

4. Edit `models/excuse.rb` to add a `field` for the new language:

   ```ruby
   field :text_it
   ```

5. Push to your fork and submit a PR.

All contributions are very welcome.

[wasp]: https://wasp-lang.dev/docs/tutorials/dev-excuses-app
