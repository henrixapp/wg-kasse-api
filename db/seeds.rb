# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#BillingItem
#Authors
henrik = Author.create(name:"Henrik")
anna= Author.create(name:"Anna")
karsten=Author.create(name:"Karsten")

scheuermilch=BillingItem.create(title:"Scheuermilch", author:henrik,price:1.29)
kartoffeln=BillingItem.create(title:"Kartoffeln",author:anna,price:2.99)
