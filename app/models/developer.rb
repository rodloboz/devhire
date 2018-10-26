class Developer < ApplicationRecord
  has_many :developer_skills, dependent: :destroy
  has_many :skills, through: :developer_skills
  has_many :projects

  default_scope { order(hourly_rate: :desc) }

  def full_name
    "#{first_name} #{last_name}"
  end

  def skills_to_s
    skills.pluck(:name).map(&:titleize).join(" | ")
  end
end
