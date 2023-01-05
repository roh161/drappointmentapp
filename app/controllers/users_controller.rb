class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      if user_signed_in?
        flash[:notice] = 'Created successfully'
      else
        flash[:notice] = 'Account Created Successfully please Login to access your account'
      end 
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def user_params
     params.require(:user).permit(:name, :password,:email,:user_role, :password_confirmation)
  end
end
