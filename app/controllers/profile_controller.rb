class ProfileController < ApplicationController
  def show
    @current_user = User.first
  end
end
