$:.unshift 'lib'
require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'
require 'talker'

get '/' do
  puts options.public
  haml :index
end

get '/style.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :style
end

get '/:text' do
  content_type 'audio/mp3'
  Talker.talk(params[:text])
end


