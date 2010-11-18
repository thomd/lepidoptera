require 'rubygems'
require 'sinatra/base'
require 'haml'
require 'sass'

class <%= name.camelize %>App < Sinatra::Base

  set :root, File.dirname(__FILE__)
  set :public, Proc.new { File.join(root, "public") }
  set :views, Proc.new { File.join(root, "views") }
  set :haml, :format => :html5, :layout => :'layouts/default'
  set :sass, :style => :expanded
  enable :sessions

  helpers do
  end


  get '/' do
    haml :index
  end

  # stylesheet
  get '/style.css' do
    headers 'Content-Type' => 'text/css; charset=utf-8'
    sass :style
  end

end

