# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Department.destroy_all

sports = Department.create(name:"Sports", description:"The Sports Department has everything from baseball bats to bicycles.", num_of_employees: 4)
    
    10.times do
    sports.items.create(name: Faker::Vehicle.make, description:Faker::Vehicle.car_options, price: rand(1.5...3.5).round(2), quantity:rand(1...100))
    end

grocery = Department.create(name:"Grocery", description:"The Grocery deparment carries items like milk, bread, eggs and much more.", num_of_employees: 8)
    
    10.times do
    grocery.items.create(name: Faker::Food.dish, description:Faker::Food.description, price: rand(1.5...3.5).round(2), quantity:rand(1...100))
    end

clothing = Department.create(name:"Clothing", description:"The Clothing department has mens, womens and childrens clothes.", num_of_employees: 5)
    
    10.times do
    clothing.items.create(name: Faker::Cosmere.metal, description:Faker::Movies::HarryPotter.quote, price: rand(1.5...3.5).round(2), quantity:rand(1...100))
    end

toy = Department.create(name:"Toy", description:"We have hundreds of toys to choose from.", num_of_employees: 3)

    10.times do
    toy.items.create(name: Faker::Vehicle.make, description:Faker::Movies::HarryPotter.quote, price: rand(1.5...3.5).round(2), quantity:rand(1...100))
    end

lawn = Department.create(name:"Lawn and Gardening", description:"Items ranging from potted plants to garden tools.", num_of_employees: 5)

    10.times do
    lawn.items.create(name: Faker::Vehicle.make, description:Faker::Movies::HarryPotter.quote, price: rand(1.5...3.5).round(2), quantity:rand(1...100))
    end
    