require 'sinatra'
require 'json'
require 'builder'

get '/' do
	haml :vecka
end

get '/api/v1/week.json' do
	content_type :json
	{:week => Time.new.strftime('%W')}.to_json
end

get '/api/v1/week.xml' do
	builder do |xml|
		xml.instruct!
		xml.week Time.new.strftime('%W') 
	end
end