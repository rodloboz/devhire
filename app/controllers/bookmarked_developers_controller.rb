class BookmarkedDevelopersController < ApplicationController
  before_action :set_developer

  def create
    Bookmark.create(bookmarked: @developer, user: current_user)
  end

  def destroy
    Bookmark.where(bookmarked_id: @developer.id, user_id: current_user.id).first.destroy
  end

  private

  def set_developer
    @developer = Developer.find(params[:developer_id])
  end
end
