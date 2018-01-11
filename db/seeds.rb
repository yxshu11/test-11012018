require 'faker'

10.times do
  name = Faker::Name.name
  email = Faker::Internet.email
  Owner.create!(name: name, email: email)
end

Owner.all.each do |o|
  5.times do
    name = Faker::Lorem.word
    price = Faker::Number.decimal(2)
    description = Faker::Lorem.paragraph
    o.articles.create!(name: name, price: price, description: description)
  end
end
