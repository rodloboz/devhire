class Booking < ApplicationRecord
   belongs_to :developer, foreign_key: :developer_id, class_name: 'User'
   belongs_to :client, foreign_key: :client_id, class_name: 'User'

   validates :start_date, :end_date, presence: true
end
