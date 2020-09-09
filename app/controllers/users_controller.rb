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
         user = User.find_by(email: params[:email])  #find the user
         #authenicate user then next step
         if user && user.authenticate(params[:password])#authenicate our use.take password and 
          #log them in
          #create a key value pair in the session hash using the user_id to actually log in
          session[:user_id] = user.id
          #binding.pry
            redirect "/users/#{user.id}"
         else 
            redirect '/login'
            #binding.pry
         end
        end

        #users show route
        get "/users/:id" do
            "Thank You for signing in !"
        end
end