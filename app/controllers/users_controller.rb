class UsersController < ApplicationController

    #Render login form
    get "/login" do
        erb :login #renders our login form
    end

    #receive data from params from the login form via POST route
    #received from form action in login.erb
    #method is post, do block
    #data is sent via POST or Patch route


    post "/login" do #receives data from login form(params)
        #binding.pry, then shotgun /login then enter email in webpage then run params in terminal
        # params key comes from login.erb password and email name
    end
end