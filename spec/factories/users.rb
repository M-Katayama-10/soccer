FactoryBot.define do
  factory :user do
    name                  { Faker::Name.initials(number: 5) }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    belongs               { 'J2' }
    category_id           { 2 }
    hometown              { '高崎' }
    homepage              { 'https://app.com/' }
  end
end