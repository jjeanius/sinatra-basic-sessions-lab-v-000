require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  configure do
    enable :Sessions
    set :session_secret, "secret"
  end

  get '/' do

    erb :'/index'
  end

  post '/checkout' do
    @session = session
    session[:item] = params["item"]
  end

end
