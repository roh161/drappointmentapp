class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show 
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'user has created successfully'
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find
    @user.destroy
    redirect_to rooot_path
  end

  private
  def user_params
     params.require(:user).permit(:name, :password,:email,:user_role, :password_confirmation)
  end
end
