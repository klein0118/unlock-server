# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(
  email: 'admin@unlok.com', 
  password: 'password', 
  password_confirmation: 'password'
)

item_categories = ['aircrafts', 'helicoptor']
item_categories.each do |name|
  ItemCategory.find_or_create_by(name: name)
end
