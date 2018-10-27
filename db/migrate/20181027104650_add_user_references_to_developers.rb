class AddUserReferencesToDevelopers < ActiveRecord::Migration[5.2]
  def change
    add_reference :developers, :user, foreign_key: true
  end
end
