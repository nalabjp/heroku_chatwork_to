require 'sinatra'
require 'eventmachine'
require 'chatwork_to'

set :server, 'thin'

get '/' do
  'Hello chatwork_to on heroku'
end

EM::defer do
  ChatworkTo::Process.new.run
end
