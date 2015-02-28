# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
users = [
  {'firstname' => "Jake", 'lastname' => "Mathis", 'email' => "jake.mathis@test.pl"},
  {'firstname' => "Wanda", 'lastname' => "Johnston", 'email' => "wanda.johnston@test.pl"},
  {'firstname' => "Rebecca", 'lastname' => "Wright", 'email' => "rebecca.wright@test.pl"},
  {'firstname' => "Ella",  'lastname' => "Mackenzie", 'email' => "ella.mackenzie@test.pl"},
  {'firstname' => "Nicholas", 'lastname' => "Scott", 'email' => "nicholas.scott@test.pl"}
]

users.each do |value|
  User.create( email: value['email'] , firstname: value['firstname'], lastname: value['lastname'] , password: '1qaz2wsx' ,password_confirmation: '1qaz2wsx')
end

admin = User.create( email: "nancy.davolio@test.pl" , firstname: "Nancy", lastname: "Davolio" , password: '1qaz2wsx' ,password_confirmation: '1qaz2wsx',admin: true)
 
category = Category.create(name: "Example")

users = User.all.limit(6)

1.upto(5) do |i|
  prod = Product.create(title: "Sample title #{i}", description: "Sample description #{i}", price: 12, user_id: admin.id, category_id: category.id)
  Review.create(content: "Sample content#{i}" ,rating: i ,product_id: prod.id, user_id: admin.id)
end

