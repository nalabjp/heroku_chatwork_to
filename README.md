# ChatworkTo on Heroku
[ChatworkTo](https://github.com/nalabjp/chatwork_to)

## Clone repository
```
$ git clone https://github.com/nalabjp/heroku_chatwork_to.git
$ cd heroku_chatwork_to
```

## ChatWork to Slack
#### Configure chatwork_to.yml
Edit chatwork_to.yml for your settings. For example, I use [direnv](http://direnv.net).
```
$ vim chatwork_to.yml
```

Or edit it yourself as:

```
$ vim .envrc
```

## Slack to ChatWork
#### Configure ENV
Require Slack integration as Slash commands, team_id, user_id, channel_id and ChatWork API token

```
CW_CHATWORK_TOKEN=your_chatwork_api_token
CW_SLACK_TOKEN=your_slash_commands_integration_token
CW_COMMAND=/your_slack_command
CW_TEAM_ID=T123456 #=> see https://api.slack.com/methods/auth.test/test
CW_USER_ID=U123456 #=> see https://api.slack.com/methods/auth.test/test
CW_CHANNEL_ID=U123456 #=> see https://api.slack.com/methods/channels.list/test
```

## Heroku
Edit `heroku_config.sh` for yourself if necessary.
```
$ vim heroku_config.sh
```

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
