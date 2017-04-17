class SessionsController < ApplicationController

  def new
  end

  def create
   #logging in
   #grab user by user name
   #password confirmation
   #route to index
   @user = User.find_by(username:params[:username])
   if @user.authenticate(params[:password])
     redirect_to episodes_path
   else
     flash[:notice] = "incorrect username or password"
     render :new
   end
  end

end
