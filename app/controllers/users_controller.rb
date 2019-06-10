class UsersController < ApplicationController
  def update
    user = User.first
    user.update(user_params)
    redirect_to :profile_path
  end

  def user_params
    params.fetch(:user, {}).permit(:name, :email)
  end
end
