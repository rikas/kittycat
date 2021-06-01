puts "Deleting all cats from your DB..."
Cat.destroy_all

puts "Creating 30 new cats..."
30.times do
  Cat.create(
    description: Faker::Lorem.paragraph(sentence_count: 2),
    age: rand(1..10),
    color: Faker::Color.color_name,
    claimed: [true, false].sample
  )
end

puts "All done 🎉"
