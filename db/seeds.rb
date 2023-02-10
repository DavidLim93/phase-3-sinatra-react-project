require "date"

puts "🌱 Seeding spices..."

Task.create(
    {name: "Mow Lawn",
    description: "Mow front and back lawns & trim hedges",
    category_id: 1,
    deadline: "15/2/2023",
    priority: ["High", "Medium", "Low"].sample}
)

Task.create(
    {name: "Make Dinner",
    description: "Thaw pork, chop veggies, make stew",
    category_id: 1,
    deadline: "10/2/2023",
    priority: ["High", "Medium", "Low"].sample}
)

Task.create(
    {name: "Get groceries",
    description: "Buy meat & vegies, snacks, and drinks",
    category_id: 3,
    deadline: "12/2/2023",
    priority: ["High", "Medium", "Low"].sample}
)


Task.create(
    {name: "Code",
    description: "Complete  module",
    category_id: 2,
    deadline: "30/3/2023",
    priority: ["High", "Medium", "Low"].sample}
)


Category.create(
  name: "Home"
)

Category.create(
  name: "Work"
)

Category.create(
  name: "Personal"
)


puts "✅ Done seeding!"