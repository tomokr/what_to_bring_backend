# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email:'test@example.com', name: 'Test User')

List.create(user_id:'1', name: 'First list')

Item.create(name:'hoge', list_id:'1')
Item.create(name:'fuga', list_id:'1')
Item.create(name:'piyo', list_id:'1')