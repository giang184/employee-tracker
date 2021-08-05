# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Division.destroy_all

5.times do |index|
  division = Division.create!(name: Faker::Name.unique.name)
  5.times do |index|
    Employee.create!(name: Faker::Name.unique.name, division_id: division.id)
  end
end

p "Created #{Division.count} divisions"