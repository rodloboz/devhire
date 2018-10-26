class DeveloperSkill < ApplicationRecord
  belongs_to :developer
  belongs_to :skill

  validates :skill, uniqueness: { scope: :developer }

  acts_as_list add_new_at: :bottom
  scope :sorted, -> { order(position: :asc) }
end
