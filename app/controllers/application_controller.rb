require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    #enables sessions from users controller
    enable :sessions
    #then set a session secret for extra layer of security
    set :session_secret, "dbz"
  end

  get "/" do
    erb :welcome
  end

end
