# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(:username => 'admin', :password => 'admin')
puts("Created Admins ...")
User.create!(:fname => 'Lorem', :lname => 'Ipsum', :email => 'lorem@gmail.com', :password => 'lorem')
User.create!(:fname => 'Cool', :lname => 'Joe', :email => 'cool@gmail.com', :password => 'cool')
User.create!(:fname => 'Man', :lname => 'Found', :email => 'man@gmail.com', :password => 'man')
User.create!(:fname => 'Dude', :lname => 'Guy', :email => 'guy@gmail.com', :password => 'guy')
puts("Created Users ...")
