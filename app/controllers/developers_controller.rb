class DevelopersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_developer, only: [:show, :edit, :update]

  def index
    query = params[:q]
    @developers = Developer.all #.includes(:skills) => filters skills as well
    @developers = @developers.find_by_skill(query) if query.present?
  end

  def show
    if current_user && current_user.profile == @developer
      redirect_to profile_path
    end
    @booking = Booking.new
  end

  def new
    if current_user.has_profile?
      redirect_to profile_path
    end
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(developer_params)
    @developer.user = current_user
    if @developer.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @developer.update(developer_params)
      redirect_to @developer
    else
      render :edit
    end
  end

  def bookmarked
    @developers = current_user.bookmarked_developers
  end

  private

  def set_developer
    @developer = Developer.find(params[:id])
  end

  def developer_params
    params.require(:developer).permit(
      :first_name, :last_name, :github_username,
      :avatar_url, :bio, :hourly_rate,
      skill_ids: []
    )
  end
end
