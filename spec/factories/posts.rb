FactoryBot.define do
  factory :post do
    days                  { Faker::Date.in_date_period }
    dayofweek_id          { 3 }
    starttime             { '13:00' }
    endtime               { '16:00' }
    place                 { '横浜' }
    supplement            { 'Dチーム' }

    association :user
  end
end
