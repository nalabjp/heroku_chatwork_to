#!/bin/bash
heroku config:add CW2_EMAIL=$CW2_EMAIL
heroku config:add CW2_PASS=$CW2_PASS
heroku config:add CW2_ROOMS_1=$CW2_ROOMS_1
heroku config:add CW2_ROOMS_2=$CW2_ROOMS_2
heroku config:add CW2_ROOMS_3=$CW2_ROOMS_3
heroku config:add CW2_ROOMS_4=$CW2_ROOMS_4
heroku config:add CW2_ROOMS_5=$CW2_ROOMS_5
heroku config:add CW2_SLACK_TOKEN=$CW2_SLACK_TOKEN

heroku config:add CMD_CW_CHATWORK_TOKEN=$CMD_CW_CHATWORK_TOKEN
heroku config:add CMD_CW_SLACK_TOKEN=$CMD_CW_SLACK_TOKEN
heroku config:add CMD_CW_TEAM_ID=$CMD_CW_TEAM_ID
heroku config:add CMD_CW_USER_ID=$CMD_CW_USER_ID
heroku config:add CMD_CW_CHANNEL_ID=$CMD_CW_CHANNEL_ID
