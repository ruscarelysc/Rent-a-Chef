require 'faker'
10.times do
  Chef.create(name: Faker::Name.name, category: Faker::Restaurant.type, price: "#{rand(1..100)}$", description: Faker::Restaurant.description, user_id: 1)
end
 puts'file seeded'
