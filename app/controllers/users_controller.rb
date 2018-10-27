class UsersController < ApplicationController
  def profile
    unless current_user.has_profile?
      redirect_to new_developer_path
    end
    @developer = current_user.profile
  end
end
