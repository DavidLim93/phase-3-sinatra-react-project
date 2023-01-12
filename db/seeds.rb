puts "🌱 Seeding tasks..."

# Seed your database here
Todos.create(task: "Clean room", importance: "Important", complete_by: "6/1/2023")
Todos.create(task: "Go grocery shopping", importance: "Very important", complete_by: "2/1/2023")
Todos.create(task: "Go for a walk", importance: "Important", complete_by: "2/1/2023")
Todos.create(task: "Watch Wednesday", importance: "Not very important", complete_by: "6/2/2023")
Todos.create(task: "Start Sinatra Project", importance: "Very important", complete_by: "15/1/2023")

puts "✅ Done seeding!"
