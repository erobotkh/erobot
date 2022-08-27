Generate project:
```s
rails new erobot --database=postgresql
```

Add `webpacker` & `foreman` to Gemfile then `bundle install`

```s
gem install foreman
bin/rails webpacker:install
bin/rails webpacker:install:vue
bin/rails generate controller Landing index --no-javascripts --no-stylesheets --no-helper --no-assets --no-fixture
yarn install
```

To execute:
```s
foreman start 
```

Reference:
- https://www.agiratech.com/create-application-rails-vue-js
- https://github.com/jetthoughts/vuejs-rails-starterkit