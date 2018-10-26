class Project < ApplicationRecord
  belongs_to :developer

  include Nameable
  default_scope { order(created_at: :asc) }
end
