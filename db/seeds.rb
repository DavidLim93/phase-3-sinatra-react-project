puts "🌱 Seeding tasks..."

# Seed your database here
Todos.create(todo: "Clean room", importance: "Important", complete_by: "6/1/2023")
Todos.create(todo: "Go grocery shopping", importance: "Very important", complete_by: "2/1/2023")
Todos.create(todo: "Go for a walk", importance: "Important", complete_by: "2/1/2023")
Todos.create(todo: "Watch Wednesday", importance: "Not very important", complete_by: "6/2/2023")
Todos.create(todo: "Start Sinatra Project", importance: "Very important", complete_by: "15/1/2023")

puts "✅ Done seeding!"
