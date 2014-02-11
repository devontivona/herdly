# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

["Take out the trash", "Clean the house", "Do my laundry", "Set up my party", "Clean up my party"].each do |task|
  Task.create(title: task)
end