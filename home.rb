#require 'rubygems'
#require 'sinatra'
require 'haml'

before do
  headers "Content-Type" => "text/html; charset=utf-8"
end

get '/' do
  haml :home_index
end

get '/styles.css' do
  response['Content-Type'] = "text/css; charset=utf-8"
  sass :styles
end