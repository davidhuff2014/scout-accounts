Fabricator(:troop) do
  troop_number { Faker::Number.number(5) }
  location { Faker::Address.city }
  inception_year { Faker::Number.number(4) }
  charter_sponsor { Faker::Company.name }
end
