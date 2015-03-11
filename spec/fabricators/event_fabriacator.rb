Fabricator(:event) do
  name { Faker::Company.bs }
  date { Faker::Date.backward(30) }
end