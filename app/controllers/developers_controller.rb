class DevelopersController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_developer, only: [:show]

  def index
    query = params[:q]
    @developers = Developer.includes(:skills)
    @developers = @developers.find_by_skill(query) if query.present?
  end

  def show
    @booking = Booking.new
  end

  def bookmarked
    @developers = current_user.bookmarked_developers
  end

  def autocomplete
    render json: {}
  end

  private

  def set_developer
    @developer = Developer.find(params[:id])
  end
end
