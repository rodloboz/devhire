class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_skills, dependent: :destroy
  has_many :skills, through: :user_skills

  default_scope { order(hourly_rate: :desc) }

  def full_name
    "#{first_name} #{last_name}"
  end

  def skills_to_s
    skills.pluck(:name).map(&:titleize).join(" | ")
  end
end
