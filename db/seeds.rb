puts "Seeding pet..."
10.times do 
  Pet.create!(
    name: Faker::Creature::Dog.name,
    address: Faker::Address.street_name,
    age: rand(1..15),
    species: Pet::SPECIES.sample,
    found_on: Date.today - rand(1..5)
  )
  puts "Created #{Pet.last.name}"
end
puts "done"