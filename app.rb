require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "roodster"
  end

  GET '/' do
    erb :index
  end

  POST '/checkout' do
    session[:item] = params[:item]
    @session = session
    erb :checkout
  end

end
