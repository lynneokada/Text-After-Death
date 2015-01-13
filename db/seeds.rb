# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Receiver.create!(name:  "Receiver 1",
                 email: "receiver1@textafterdeath.com",
                 password:              "foobar",
                 confirmation_password: "foobar",
                 user_type: "Receiver",
                 phone_number: "0123456789"
                 )

Sender.create!(name:  "Sender 1",
               email: "sender1@textafterdeath.com",
               password:              "foobar",
               confirmation_password: "foobar",
               user_type: "Sender",
               public_key: "foobarbaz"
               )
