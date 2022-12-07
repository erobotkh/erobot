## Basic setup

```s
rails new erobot --database=postgresql
```

add webpacker to Gemfile then `bundle install`

```
bin/rails webpacker:install
```

## UI
1. Add
```Gemfile
gem 'foreman'
gem 'tailwindcss-rails'
```
1. Run:
```
./bin/rails tailwindcss:install
```

Install tailwindcss:
https://tailwindcss.com/docs/guides/ruby-on-rails

Run project:
```
./bin/dev
```