require 'sinatra'
require 'sinatra/reloader' if development?
require 'eventmachine'
require 'chatwork_to'
require 'chatwork'

set :server, 'thin'

ChatWork.api_key = ENV['CW_CHATWORK_TOKEN']

get '/' do
  'Hello chatwork_to on heroku'
end

post '/cw' do
  return 'Require ChatWork token' unless ChatWork.api_key

  params = request.params

  # validation
  raise "Invalid command : #{params['command']}"        unless params['command'].eql?(ENV['CW_COMMAND'])
  raise "Invalid token : #{params['token']}"            unless params['token'].eql?(ENV['CW_SLACK_TOKEN'])
  raise "Invalid team_id : #{params['team_id']}"        unless params['team_id'].eql?(ENV['CW_TEAM_ID'])
  raise "Invalid user_id : #{params['user_id']}"        unless params['user_id'].eql?(ENV['CW_USER_ID'])
  raise "Invalid channel_id : #{params['channel_id']}"  unless params['channel_id'].eql?(ENV['CW_CHANNEL_ID'])
  raise "Invalid text : #{params['text']}"              unless match = params['text'].match(/\Arid:([0-9]+) (.+)\Z/)

  # send message
  res = ChatWork::Message.create(room_id:match[1], body:match[2])
  if res['message_id']
    "Completed send message: https://www.chatwork.com/#!rid#{match[1]}-#{res['message_id']}"
  else
    "Failed to send message..."
  end
end

EM::defer do
  ChatworkTo::Process.new.run
end
