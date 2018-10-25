class Project < ApplicationRecord
  belongs_to :user

  include Nameable
end
