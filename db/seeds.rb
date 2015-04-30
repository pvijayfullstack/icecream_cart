# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  ConeForCup.create(:name => "Plain Cone", :price => 1.5)
  ConeForCup.create(:name => "Waffle Cone", :price => 2.0)
  ConeForCup.create(:name => "Cup", :price => 1.2)

  Flavor.create(:name => "Vanilla", :price => 1.5)
  Flavor.create(:name => "Mango", :price => 2.0)
  Flavor.create(:name => "Cherry", :price => 1.2)
  Flavor.create(:name => "Peach", :price => 1.2)


  Extra.create(:name => "Sprinkles", :price => 1.5)
  Extra.create(:name => "Caramel Goo", :price => 2.0)
  Extra.create(:name => "Chocolate Sauce", :price => 1.2)
  Extra.create(:name => "Chopped Walnuts", :price => 1.2)

