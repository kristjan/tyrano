require 'sinatra'
require 'heroku-api'

PROCESS_FIELDS = %w[process command pretty_state]

set :public_folder, File.join(File.dirname(__FILE__), 'static')

get '/' do
  @processes = get_processes
  haml :index, format: :html5
end

def heroku
  @heroku ||= Heroku::API.new(
    api_key: ENV['HEROKU_API_KEY']
  )
end

# Fetch all running Heroku processes and sort them into types,
# eg. `web` or `run`
def get_processes
  heroku.get_ps(ENV['APP_NAME']).body.group_by do |process|
    process['process'].split('.').first
  end
end
