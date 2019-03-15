# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

tomb_raider = Product.new
tomb_raider.name = 'Tomb Raider'
tomb_raider.description = 'Tomb Raider is an action-adventure video game developed by Crystal Dynamics and published by Square Enix. Tomb Raider is the tenth title in the Tomb Raider franchise, and operates as a reboot that reconstructs the origins of Lara Croft.'
tomb_raider.price = '7.00'
tomb_raider.image = 'TombRaider'
tomb_raider.category_id = '1'
tomb_raider.product_id = '1'
tomb_raider.save
tomb_raider.errors.full_messages
puts 'Tomb_Raider Created.'
