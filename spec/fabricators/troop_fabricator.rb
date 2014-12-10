Fabricator(:troop) do
  troop_number { Faker::Number.number(5) }
  location { Faker::Address.city }
  inception_year { Faker::Business.credit_card_expiry_date }
  charter_sponsor { Faker::Company.name }
end
