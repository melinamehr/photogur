class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    if @user.save
      redirect_to "/users"
  end

end

  private

  def user_params
    params.require(:user).permit(:email, :password,
    :password_confirmation)
  end

end
