class UsersController < ApplicationController
  before_filter :require_user, only: [:index]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = "Welcome, #{ @user.full_name } you are now registered, please sign in!"
      redirect_to sign_in_path
    else
      render :new
    end

  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :full_name)
  end
end