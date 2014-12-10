Fabricator(:scout) do
  full_name { Faker::Name.name }
  troop_id { Faker::Number.number(5) }
end