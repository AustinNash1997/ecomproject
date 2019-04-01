# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Category.destroy_all
AdminUser.destroy_all

single_player = Category.new
single_player.name = 'Single Player'
single_player.id = '1'
single_player.category_id = '1'
single_player.description = 'A single-player video game is a video game where input from only one player is expected throughout the course of the gaming session.'
single_player.image.attach(io: File.open(Rails.root.join('app/assets/images/single_player.png')), filename: 'single_player.png', content_type: 'img/png')
single_player.save
single_player.errors.full_messages
puts 'single player category created.'

multiplayer = Category.new
multiplayer.name = 'Multiplayer'
multiplayer.id = '2'
multiplayer.category_id = '2'
multiplayer.description = 'A multiplayer video game is a video game in which more than one person can play in the same game environment at the same time, either locally or over the internet.'
multiplayer.image.attach(io: File.open(Rails.root.join('app/assets/images/multiplayer.png')), filename: 'multiplayer.png', content_type: 'img/png')
multiplayer.save
multiplayer.errors.full_messages
puts 'multiplayer category created.'

tomb_raider = Product.new
tomb_raider.name = 'Tomb Raider'
tomb_raider.description = 'Tomb Raider is an action-adventure video game developed by Crystal Dynamics and published by Square Enix. Tomb Raider is the tenth title in the Tomb Raider franchise, and operates as a reboot that reconstructs the origins of Lara Croft.'
tomb_raider.price = '7.00'
tomb_raider.image.attach(io: File.open(Rails.root.join('app/assets/images/TombRaider.jpg')), filename: 'TombRaider.jpg', content_type: 'img/jpg')
tomb_raider.category_id = '1'
tomb_raider.product_id = '1'
tomb_raider.save
tomb_raider.errors.full_messages
puts 'Tomb_Raider Created.'

black_ops = Product.new
black_ops.name = 'Black Ops IV'
black_ops.description = 'Call of Duty: Black Ops 4 is a multiplayer first-person shooter developed by Treyarch and published by Activision.'
black_ops.price = '49.95'
black_ops.image.attach(io: File.open(Rails.root.join('app/assets/images/BlackOpsIV.jpg')), filename: 'BlackOpsIV.jpg', content_type: 'img/jpg')
black_ops.category_id = '2'
black_ops.product_id = '2'
black_ops.save
black_ops.errors.full_messages
puts 'Black_Ops_IV Created.'

assassins_creed_origins = Product.new
assassins_creed_origins.name = 'Assassins Creed: Origins'
assassins_creed_origins.description = "Assassin's Creed Origins is an action-adventure video game developed by Ubisoft Montreal and published by Ubisoft. It is the tenth major installment in the Assassin's Creed series and the successor to 2015's Assassin's Creed Syndicate."
assassins_creed_origins.price = '30.00'
assassins_creed_origins.image.attach(io: File.open(Rails.root.join("app/assets/images/Assassin's_Creed_Origins_Cover_Art.png")), filename: "Assassin's_Creed_Origins_Cover_Art.png", content_type: 'img/png')
assassins_creed_origins.category_id = '1'
assassins_creed_origins.product_id = '3'
assassins_creed_origins.save
assassins_creed_origins.errors.full_messages
puts 'ACO Created.'

apex = Product.new
apex.name = 'Apex Legends'
apex.description = 'Apex Legends is a free-to-play battle royale game developed by Respawn Entertainment and published by Electronic Arts. However, this copy contains the battlepass!'
apex.price = '15.00'
apex.image.attach(io: File.open(Rails.root.join('app/assets/images/Apex_legends_cover.jpg')), filename: 'Apex_legends_cover.jpg', content_type: 'img/jpg')
apex.category_id = '2'
apex.product_id = '4'
apex.save
apex.errors.full_messages
puts 'Apex_Legends Created'

rainbow = Product.new
rainbow.name = 'Rainbow Six Siege'
rainbow.description = "Tom Clancy's Rainbow Six Siege (often shortened to Rainbow Six Siege) is a tactical shooter video game developed by Ubisoft Montreal and published by Ubisoft. It was released worldwide for Microsoft Windows, PlayStation 4, and Xbox One on December 1, 2015. The game puts heavy emphasis on environmental destruction and cooperation between players."
rainbow.price = '25.00'
rainbow.image.attach(io: File.open(Rails.root.join('app/assets/images/Tom_Clancys_Rainbow_Six_Siege.jpg')), filename: "Tom_Clancy's_Rainbow_Six_Siege.jpg", content_type: 'img/jpg')
rainbow.category_id = '2'
rainbow.product_id = '5'
rainbow.save
rainbow.errors.full_messages
puts 'Rainbow_Six_Siege Created.'

sekiro = Product.new
sekiro.name = 'Sekiro: Shadows Die Twice'
sekiro.description = 'Sekiro: Shadows Die Twice[a] is an action-adventure video game developed by FromSoftware and published by Activision. The game was released worldwide for Microsoft Windows, PlayStation 4, and Xbox One on March 22, 2019. The game follows a Sengoku period shinobi known as Sekiro as he attempts to take revenge on a samurai who attacked him and kidnapped his lord. The game received universal acclaim from critics.'
sekiro.price = '80.00'
sekiro.image.attach(io: File.open(Rails.root.join('app/assets/images/Sekiro.jpg')), filename: 'Sekiro.jpg', content_type: 'img/jpg')
sekiro.category_id = '1'
sekiro.product_id = '6'
sekiro.save
sekiro.errors.full_messages
puts 'Sekiro_Shadows_Die_Twice Created'

OrderStatus.delete_all
OrderStatus.create! id: 1, name: 'In Progress'
OrderStatus.create! id: 2, name: 'Placed'
OrderStatus.create! id: 3, name: 'Complete'
OrderStatus.create! id: 4, name: 'Cancelled'

About.create! title: 'About', content: 'We are Numb Dragon, an online game store.'

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
