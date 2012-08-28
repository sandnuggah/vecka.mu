require 'sinatra'
require 'json'

get '/' do
	haml :vecka
end

get '/api/v1/week.json' do
	content_type :json
	
	{:week => Time.new.strftime('%W')}.to_json
end