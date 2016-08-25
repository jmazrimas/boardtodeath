# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create(username: "Gardoman" , email: "gardo@email.com", password: "password")
u2 = User.create(username: "danpark" , email: "danpark@email.com", password: "password")
u3 = User.create(username: "joemaz" , email: "joemaz@email.com", password: "password")
u4 = User.create(username: "dylanc" , email: "dylanc@email.com", password: "password")
u5 = User.create(username: "veronica" , email: "veronica@email.com", password: "password")

g01 = Game.create(title: "Monopoly", user_id: u1.id, description: "Game about Money")
g02 = Game.create(title: "Life", user_id: u2.id, description: "Game about Life")
g03 = Game.create(title: "Candyland", user_id: u3.id, description: "Game about Candyland")
g04 = Game.create(title: "Snakes and Ladders", user_id: u4.id, description: "Game about Sakes and Ladders")
g05 = Game.create(title: "Jumanji", user_id: u5.id, description: "Game about Jumanji")
g06 = Game.create(title: "Zathora", user_id: u5.id, description: "Game about Zathora")
