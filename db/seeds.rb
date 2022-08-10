puts '🌱 Seeding spices...'

categories = %w[Groceries Research Work Family]
todos = ['Buy bananas', 'Find the next hot JS framework', 'Make lunch', 'Call Dad']

categories.each { |cat| Category.create({ name: cat }) }
todos.each_with_index { |todo, i| Todo.create({ body: todo, category: Category.all[i] }) }

puts '✅ Done seeding!'
