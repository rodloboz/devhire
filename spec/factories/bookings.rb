FactoryBot.define do
  factory :booking do
    user { :user }
    developer { :developer }
    start_date { Faker::Date.between(2.days.ago, Date.today) }
    end_date { Faker::Date.between(Date.today, 2.days.from_now) }
  end
end
