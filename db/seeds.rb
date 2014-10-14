# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Scout.create(full_name: 'Dave Huff')
Troop.create(troop_number: 261)
Account.create(scout_id: 1, tranaction_date: '2014-10-14', payment: 800, transaction: 'money was deposited', deposit: 800, total: 800)
# TODO will not seed