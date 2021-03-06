class SessionsController < ApplicationController

  def new
    sign_out
  end

  def create
    @user = User.find_by_email(params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      session[:user_id] = @user.id
      redirect_to welcome_index_path
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end


  
end