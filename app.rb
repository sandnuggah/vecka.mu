require 'sinatra'
require 'json'
require 'builder'

get '/' do
  @week = Time.now.strftime('%W')
  haml :vecka
end

get '/api/v1/week.json' do
  content_type :json
  {:week => Time.now.strftime('%W')}.to_json
end

get '/api/v1/week.xml' do
  content_type :xml
  builder do |xml|
    xml.instruct!
    xml.week Time.now.strftime('%W') 
  end
end