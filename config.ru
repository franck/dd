require 'rubygems'
#require 'sinatra'
require 'vendor/sinatra/lib/sinatra.rb'

require 'home'

root_dir = File.dirname(__FILE__)

set :environment, :production
set :root,        root_dir
set :app_file,    File.join(root_dir, 'app.rb')
disable :run

run Sinatra::Application