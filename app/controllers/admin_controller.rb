class AdminController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Created successfully'
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
