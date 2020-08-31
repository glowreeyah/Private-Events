class UsersController < ApplicationController
  def new
    @user = User.new
    @current_user = User.find_by_id(session[:current_user_id])
  end
  
  def create
    @user = User.new(signup_params)
    if @user.save
      session[:current_user_id] = @user.id
      redirect_to @user
    end
  end

  def show
    @current_user = User.find_by_id(session[:current_user_id])  
  end

  private
  
  def signup_params
    params.require(:user).permit(:name, :email)
  end
end
