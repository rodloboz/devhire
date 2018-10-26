class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :bookmarked, polymorphic: true
end
