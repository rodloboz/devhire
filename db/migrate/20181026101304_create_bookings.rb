class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :developer_id, null: false
      t.integer :client_id, null: false
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end

    add_index :bookings, :developer_id
    add_index :bookings, :client_id
  end
end
