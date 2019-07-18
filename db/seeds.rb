# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Message.destroy_all
User.destroy_all
Channel.destroy_all

general = Channel.create!(name: "general")
react = Channel.create!(name: "react")
paris = Channel.create!(name: "paris")

seb = User.create!(email: "seb@gmail.com", password: "123456")
dan = User.create!(email: "dan@gmail.com", password: "123456")

mes1 = Message.create!(content: "Hello general channel", channel: general, user: dan)
mes2 = Message.create!(content: "Hello dan on general channel", channel: general, user: seb)

mes3 = Message.create!(content: "Hello react channel", channel: react, user: dan)
mes4 = Message.create!(content: "Hello dan on react channel", channel: react, user: seb)

mes5 = Message.create!(content: "Hello paris channel", channel: paris, user: dan)
mes6 = Message.create!(content: "Hello dan on paris channel", channel: paris, user: seb)
