class Booking < ApplicationRecord
   belongs_to :developer, counter_cache: :bookings_count
   belongs_to :user

   validates :start_date, :end_date, presence: true
end
