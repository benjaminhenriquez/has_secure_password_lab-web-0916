class UsersController < ApplicationController

  def new
  end

  def create
# # if session[:user_id] = @user.id
#       @user = User.new(user_params).save
#     redirect_to 'show'
#   # else
  #   redirect_to 'new'
  @user = User.create(user_params)
    if @user.save
    session[:user_id] = @user.id
    redirect_to  '/show'
  else
    redirect_to '/signup'
  end

end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end



  end
