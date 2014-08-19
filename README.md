# ChatworkTo on Heroku
## Setup
### Clone repository
```
$ git clone https://github.com/nalabjp/heroku_chatwork_to.git
$ cd heroku_chatwork_to
```

### Configure chatwork_to.yml
Edit chatwork_to.yml for your settings. For example, I use [direnv](http://direnv.net, 'direnv').
```
$ vim chatwork_to.yml
```

Or edit it yourself as:

```
$ vim .envrc
```

Edit `heroku_config.sh` for yourself if necessary.
```
$ vim heroku_config.sh
```

### Heroku
Heroku configuration as:
```
$ heroku create your_heroku_app_name
$ ./heroku_config.sh
$ git push heroku master
```

And addons scheduler configuration as:
```
$ heroku addons:add scheduler:standard
$ heroku addons:open scheduler
```
Use `curl http://your_heroku_app_name.herokuapp.com` for scheduler job.
