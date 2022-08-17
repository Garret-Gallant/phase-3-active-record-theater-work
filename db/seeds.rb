puts "WIPING OLD DB..."
Role.destroy_all
Audition.destroy_all
puts "DB WIPED..."

puts "SEEDING NEW DATA..."
Role.create(character_name: "Thor")
Role.create(character_name: "Finn")
Role.create(character_name: "Garret")

Audition.create(actor: "Chris Hemsworth", location: "California", phone: 1234567891, hired: false, role_id: 1)
Audition.create(actor: "Finn Murtons", location: "Ooo", phone: 5125125921, hired: false, role_id: 2)
Audition.create(actor: "Garret Gallant", location: "Colorado", phone: 3035230283, hired: false, role_id: 3)
puts "SEED COMPLETE..."