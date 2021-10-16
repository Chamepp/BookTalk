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

Card.create!(
    :cardname => "The Willoughby's",
    :cardprice => 299,
    :carddes => "The Willoughby's is a great book for teenagers who are looking for new information",
    :cardgen => "comedy",
    :cardpage => "486",
    :cardyear => 2020,
    :carddownload => 400000,
    :cardpremium => "premium"
)

Card.create!(
    :cardname => "The Gradle Cookbook",
    :cardprice => 499,
    :carddes => "The Gradle Cookbook is for technical purposes managed by developers",
    :cardgen => "science",
    :cardpage => "532",
    :cardyear => 2021,
    :carddownload => 700000,
    :cardpremium => "premium"
)

Card.create!(
    :cardname => "The Red Rose",
    :cardprice => 299,
    :carddes => "The Red Rose is a drama book based on a true story by Jason William",
    :cardgen => "drama",
    :cardpage => "87",
    :cardyear => 1998,
    :carddownload => 10000,
    :cardpremium => "free"
)
puts('Created Books ...')
puts('Operation Done Successfuly !')
