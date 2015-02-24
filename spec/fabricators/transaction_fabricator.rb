Fabricator(:transaction) do
  # a date is a date is a date albeit a future one
  date { Faker::Business.credit_card_expiry_date }
  memo { Faker::Lorem.sentence }
  payment { Faker::Commerce.price }
  deposit { Faker::Commerce.price }
  running_total { Faker::Commerce.price }
end