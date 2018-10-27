class Developer < ApplicationRecord
  belongs_to :user, optional: true
  has_many :developer_skills, dependent: :destroy
  has_many :skills, through: :developer_skills
  has_many :projects
  has_many :bookings

  validates :first_name, :last_name, :skills, :github_username, presence: true
  validates :bio, presence: true, length: { minimum: 44 }

  default_scope { order(hourly_rate: :desc) }

  def self.find_by_skill(skill)
    joins(:skills).where("skills.name ILIKE ?", "%#{skill}%")
  end

  def self.find_by_price_range(min, max)
    where("hourly_rate >= ? AND hourly_rate <= ?", min, max)
  end

  def self.top_6
    reorder(bookings_count: :desc, hourly_rate: :desc).limit(6)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def skills_to_s
    skills.pluck(:name).map(&:titleize).join(" | ")
  end
end
