FactoryBot.define do
  factory :developer do
    first_name { 'David' }
    last_name { 'Hansson' }
    github_username { 'dhh' }
    bio { 'He is a Danish programmer and the creator of the popular Ruby on Rails web development framework' }

    trait :with_skills do
      skills { build_list :skill, 2 }
    end
  end
end
