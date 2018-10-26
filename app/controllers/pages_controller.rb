class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @developers = Developer.all.take(6)
  end
end
