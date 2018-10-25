class UserSkill < ApplicationRecord
  belongs_to :user
  belongs_to :skill

  validates :skill, uniqueness: { scope: :user }

  acts_as_list add_new_at: :bottom
  scope :sorted, -> { order(position: :asc) }
end
