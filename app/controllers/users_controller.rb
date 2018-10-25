class UsersController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_user, only: [:show]

  def index
    @users = User.includes(:skills)
  end

  def show
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
