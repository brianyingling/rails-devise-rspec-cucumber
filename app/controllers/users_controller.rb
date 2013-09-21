class UsersController < ApplicationController
  # Devise authenticates before any action
  # takes place. Devise makes sure a user
  # is logged in
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:name)
  end

end
