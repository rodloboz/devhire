module Nameable
  extend ActiveSupport::Concern

  included do
    before_save :downcase_name

    # validates :name, uniqueness: { case_sensitive: false }, presence: true

    def downcase_name
      name.downcase!
    end

    def capitalized_name
      name.capitalize
    end

    def titleized_name
      name.titleize
    end
  end
end
