class AddAttributesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :github_username, :string
    add_column :users, :avatar_url, :string
    add_column :users, :bio, :text
    add_column :users, :hourly_rate, :integer, null: false, default: 0
  end
end
