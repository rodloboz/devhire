class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @developers = Developer.top_6
    @skills = Skill.pluck(:name).sort
  end
end
