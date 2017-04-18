# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#BillingItem
#Authors
henrik = Author.create(name:"Henrik",email:"henrik@henrixapp.de",password: 'password')
henrik.skip_confirmation!
anna= Author.create(name:"Anna",email:"anna@henrixapp.de",password: 'password')
anna.skip_confirmation!
karsten=Author.create(name:"Karsten",email:"karsten@henrixapp.de",password: 'password')
karsten.skip_confirmation!
henrik.save!
anna.save!
karsten.save!
scheuermilch=BillingItem.create(title:"Scheuermilch", author:henrik,price:1.29)
kartoffeln=BillingItem.create(title:"Kartoffeln",author:anna,price:2.99)
