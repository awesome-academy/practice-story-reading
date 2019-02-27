class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash[:success] = t "flash.success.welcome_to"
      redirect_to root_path
    else
      flash[:danger] = t "flash.danger.failed"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :account, :password,
      :password_confirmation)
  end
end
