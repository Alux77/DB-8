require_relative 'app'

def assert(truthy)
  raise "Tests failed" unless truthy
end

#Prueba método find *[MIGRADO]*
puts "*" * 50
p chef = Chef.find(1)
p meal = Meal.find(1)

#Prueba método all *[MIGRADO]*
puts "*" * 50
p Chef.all.count
p Meal.all.count

# #Prueba método create *[MIGRADO]*
puts "*" * 50
p Chef.create(first_name: 'Alux', last_name: 'Cervantes', email: 'alux@gmail.com', phone: '1234567890', birthday: '1977-06-23', created_at: Date, updated_at: Date)
p Meal.create(name: 'Chantal Peralta', chef_id: '7', created_at: Date, updated_at: Date)

#Prueba método where *[MIGRADO]*
puts "*" * 50
p Chef.where("id > 20")
p Meal.where("name = 'Chantal Peralta'")

# Prueba método []
puts "*" * 50
p chef[:first_name] #== 'Stefanie'
p chef[:last_name] #== 'McCullough'
p meal[:name] #== "Chicken Burger"
p meal[:chef_id] #== 12

# Prueba método []=
puts "*" * 50
p chef[:first_name] = 'Alux'
p chef[:last_name] = 'Cervantes'
p meal[:name] = "Chantal Peralta"
p meal[:chef_id] = 7

#Prueba initialize
puts "*" * 50
p Chef.new(id: "1", first_name: 'Marqués', last_name: 'De Sade', email: 'pura_pinshi_pary@veryhotmail.com', phone: '1234509876', birthday: '1740-06-02', created_at: Date, updated_at: Date)
p Meal.new(name: 'Conde Patula', chef_id: '92', created_at: Date, updated_at: Date)

#Marca final
puts "*" * 50
puts "finished"