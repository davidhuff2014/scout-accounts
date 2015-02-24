# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

troop = Troop.create(number: 261)
scout = Scout.create(full_name: 'Dave Huff', troop_id: troop.id)
Transaction.create(scout_id: scout.id, date: '2014-10-14', payment: 800, memo: 'money was deposited', deposit: 800, running_total: 800)
