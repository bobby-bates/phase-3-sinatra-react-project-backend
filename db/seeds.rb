puts "🌱 Seeding spices..."

categories = %w[Groceries Research Work Family]

categories.each { |cat| Category.create({ name: cat }) }

Todo.create(body: 'Buy bananas')

puts "✅ Done seeding!"
