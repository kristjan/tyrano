require 'sinatra'

set :port, ENV['PORT']

get '/' do
  "Hello"
end
