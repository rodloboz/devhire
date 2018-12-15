require "rails_helper"

RSpec.describe Booking do
  describe "associations" do
     it { should belong_to(:user) }
     it { should belong_to(:developer).counter_cache(true) }
  end

  describe "validations" do
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }

    it "should validate that :start_date is not available for the developer" do
      user = create :user
      developer = create :developer, :with_skills

      developer.bookings.create(start_date: 2.days.ago, end_date: 2.days.from_now, user: user )

      booking = Booking.new(start_date: Date.today, end_date: 4.days.from_now, user: user, developer: developer)

      expect(booking).not_to be_valid
    end

    it "should validate that :end_date is not available for the developer" do
      user = create :user
      developer = create :developer, :with_skills

      developer.bookings.create(start_date: 2.days.ago, end_date: 2.days.from_now, user: user )

      booking = Booking.new(start_date: 4.days.ago, end_date: Date.today, user: user, developer: developer)

      expect(booking).not_to be_valid
    end

    it "should validate that :start_date is not after :end_date" do
      user = build :user
      developer = build :developer

      booking = Booking.new(start_date: 2.days.from_now, end_date: Date.today, user: user, developer: developer)

      expect(booking).not_to be_valid
    end
  end
end
