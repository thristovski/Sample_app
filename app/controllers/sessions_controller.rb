class SessionsController < ApplicationController
  
  def new
    @title = "Create new"
  end

  def create
    @title = "Create"
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    @title = "Destroy"
    sign_out
    redirect_to root_url
  end

end
