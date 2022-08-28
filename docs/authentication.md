```s
rails g devise:install
rails g devise user
rails g devise:views

rails g doorkeeper:install
rails g doorkeeper:migration
rails db:migrate
```

If you meet problem run above generation, retry by remove device from route config.

Reference:
- https://rubyyagi.com/rails-api-authentication-devise-doorkeeper