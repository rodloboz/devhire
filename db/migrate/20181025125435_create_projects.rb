class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :stack
      t.string :photo
      t.text :description
      t.references :developer, foreign_key: true

      t.timestamps
    end
  end
end
