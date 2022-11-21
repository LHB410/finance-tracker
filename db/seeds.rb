# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating db"

Expense.destroy_all

out1 = Expense.create!(
  name: "Internet",
  amount: 4000,
  category: "outgoing")

in1 = Expense.create!(
  name: "Salary (after tax)",
  amount: 187000,
  category: 'incoming'
)

out2 = Expense.create!(
  name: "Rent",
  amount: 78000,
  category: "outgoing"
)

in2 = Expense.create!(
  name: "Salary (after tax)",
  amount: 213000,
  category: 'incoming'
)


puts "seeds created!"
