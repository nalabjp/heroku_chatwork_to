#!/bin/bash
heroku config:add CW2_EMAIL=$CW2_EMAIL
heroku config:add CW2_PASS=$CW2_PASS
heroku config:add CW2_ROOMS=$CW2_ROOMS
heroku config:add CW2_SLACK_TOKEN=$CW2_SLACK_TOKEN

heroku config:add CW_CHATWORK_TOKEN=$CW_CHATWORK_TOKEN
heroku config:add CW_SLACK_TOKEN=$CW_SLACK_TOKEN
heroku config:add CW_COMMAND=$CW_COMMAND
heroku config:add CW_TEAM_ID=$CW_TEAM_ID
heroku config:add CW_USER_ID=$CW_USER_ID
heroku config:add CW_CHANNEL_ID=$CW_CHANNEL_ID
