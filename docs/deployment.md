# Deployment

- Make sure you don't mix package.json.lock & yarn.lock
- Make sure you install ruby & ruby/nodejs build pack in heroku

```s
heroku login
heroku git:remote -a erobot-be
git push heroku develop:master
```

```
bundle lock --add-platform x86_64-linux
```