# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# counter = 25

# until counter == 0
#   counter.times do
#     FactoryGirl.create(:entry, created_at: Time.now - counter.weeks )
#     counter -= 1
#   end
# end

counter = 5

until counter == 0
  counter.times do
    FactoryGirl.create(:category)
    counter -= 1
  end
end

