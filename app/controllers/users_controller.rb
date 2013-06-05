class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_filter :correct_user, only: [:edit, :update]
  before_filter :admin_user, only: :destroy
  
  def index
    @title = "Home page"
    @users = 8
    @users = User.paginate(page: params[:page], :per_page => @users)
  end

  def show
    @title = "Show mircoposts"
    @show_microposts = 10
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page], :per_page => @show_microposts)
  end

  def new
    @title = "Sign up"
    @user = User.new
  end

  def create
    @title = "Create user"
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @title = "Edit user"
    @user = User.find(params[:id])
  end

  def update
    @title = "Update user"
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @title = "Destroy user"
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end

  private

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in."
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_path) unless current_user?(@user)
  end

  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end

end
