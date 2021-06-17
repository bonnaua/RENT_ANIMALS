require 'uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p "destroying users"
Booking.destroy_all
User.destroy_all
p "users destroyed"

p "destroying animals"
Animal.destroy_all
p "animals destroyed"

youri = User.create(name: 'Youri', description:"Hi I'm Youri, I love cats and lemurs", email:'youri@email.com', password:'123456', photo: '')
audrey = User.create(name: 'Audrey', description:"Hi I'm Audrey, I love snails and fishes", email:'audrey@email.com', password:'123456', photo: '')
aymeric = User.create(name: 'Aymeric', description: "Hi I'm Aymeric, I love dogs and snakes", email:'aymeric@email.com', password:'123456', photo: '')

p "#{User.count} users created"


animal1 = Animal.create!(name: 'Titi', category: 'Exotic', species: 'Tiger', description: 'wild tiger rescued from illegal hunting', address: '69 avenue de Villiers, 75017 Paris', age: 17, price_per_day: 200, user: youri, size: 'massive', sexe: 'male', favorite_food: 'gazelles', favorite_game: 'Roar like Katy Perry', dos: 'Long walks in hot places', donts: 'Put him with Lions')
animal1.photo.attach(io: URI.open('https://images.unsplash.com/photo-1551972251-12070d63502a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2767&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
animal1.save!

animal2 = Animal.create!(name: 'Wiwi', category: 'Reptile', species: 'Boa', description: 'sleepy boa who can eat a whole pigeon at once', address: '56 boulevard Garibaldi, 75015 Paris', age: 12, price_per_day: 30, user: youri, size: 'long', sexe: 'male', favorite_food: 'rats', favorite_game: ' Parseltongue with Harry', dos: 'Chill with Wiwi in cold and quiet places', donts: 'Use him as a scarf')
animal2.photo.attach(io: URI.open('https://images.unsplash.com/photo-1551225249-cb5dd379b29b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1542&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
animal2.save!

animal3 = Animal.create!(name: 'Tutus', category: 'Pet', species: 'Cat', description: 'nice black cat who love to eat and play', address: '11 rue des Cloys, 75018 Paris', age: 6, price_per_day: 40, user: youri, size: 'tiny', sexe: 'male', favorite_food: 'fish', favorite_game: 'play with wool balls', dos: 'Cuddles and a lot of games', donts: 'Pet another cat in front of him')
animal3.photo.attach(io: URI.open('https://images.unsplash.com/photo-1516280030429-27679b3dc9cf?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmxhY2slMjBjYXR8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
animal3.save!

animal4 = Animal.create!(name: 'Josh', category: 'Exotic', species: 'Lemur', description: 'crazy lemur always prone to play', address: '74 avenue de Clichy, 75017 Paris', age: 3, price_per_day: 75, user: youri, size: 'small', sexe: 'male', favorite_food: 'worms', favorite_game: 'Hang on trees', dos: 'Play with him in parcs', donts: 'let him alone')
animal4.photo.attach(io: URI.open('https://images.unsplash.com/photo-1541890633-a92e223f2200?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bGVtdXJ8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
animal4.save!

animal5 = Animal.create!(name: 'Dumbo', category: 'Exotic', species: 'Elephant', description: 'impress your friends with this massive Asian elephant', address: '1 rue du Louvre, 75001 Paris', age: 24, price_per_day: 400, user: youri, size: 'Big', sexe: 'male', favorite_food: 'Mangos', favorite_game: 'Water games', dos: 'Play water fights with Dumbo', donts: 'Play with his ears')
animal5.photo.attach(io: URI.open('https://images.unsplash.com/photo-1549942514-bf87b7b8cd99?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZWxlcGhhbnR8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
animal5.save!

animal6 = Animal.create!(name: 'Lea', category: 'Pet', species: 'Cat', description: 'the famous cat from the meme', address: '10 Rue Perronet, 75007 Paris', age: 12, price_per_day: 60, user: audrey, size: 'small', sexe: 'female', favorite_food: 'rats', favorite_game: 'hide in closets', dos: 'buy her cat food', donts: 'Sisturb her during nap time')
animal6.photo.attach(io: URI.open('https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2F0fGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
animal6.save!

animal7 = Animal.create!(name: 'Pedro', category: 'Bird', species: 'Parrot', description: 'English speaking parrot who loves to sing', address: '12 Rue du Dr Charles Richet, 75013 Paris', age: 12, price_per_day: 30, user: audrey, size: 'small', sexe: 'male', favorite_food: 'peanuts', favorite_game: 'Repeat things', dos: 'Sing with him', donts: 'Swear in front of him')
animal7.photo.attach(io: URI.open('https://images.unsplash.com/photo-1504579264001-833438f93df2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cGFycm90fGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
animal7.save!

animal8 = Animal.create!(name: 'Momo', category: 'Bird', species: 'Colibri', description: 'the tiniest bird ever', address: '38 Rue de Joinville, 75019 Paris', age: 2, price_per_day: 25, user: audrey, size: 'tiny', sexe: 'female', favorite_food: 'worms', favorite_game: 'Sing', dos: 'Sing with her', donts: 'leave her alone outside')
animal8.photo.attach(io: URI.open('https://images.unsplash.com/photo-1517516794485-082c4d03bb19?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y29saWJyaXxlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
animal8.save!

animal9 = Animal.create!(name: 'Chimp', category: 'Exotic', species: 'Monkey', description: 'fun chimpanzee constantly on the move', address: '60 Rue Blanche, 75009 Paris', age: 10, price_per_day: 55, user: audrey, size: 'Big', sexe: 'male', favorite_food: 'bananas', favorite_game: 'Immitate humans', dos: 'Learn him things', donts: 'Leave him alone in the Kitchen')
animal9.photo.attach(io: URI.open('https://images.unsplash.com/photo-1531570325967-4b8fcb7e120d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hpbXBhbnplZXxlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
animal9.save!

animal10 = Animal.create!(name: 'Brutus', category: 'Pet', species: 'Dog', description: 'fun American staff who loves to chase stuff', address: '19 Rue de Montmorency, 75003 Paris', age: 7, price_per_day: 40, user: audrey, size: 'Little', sexe: 'male', favorite_food: 'saucages', favorite_game: 'Run', dos: 'Have long walks', donts: 'Leave him alone along the barbecue')
animal10.photo.attach(io: URI.open('https://images.unsplash.com/photo-1549866908-bf549cdcb506?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
animal10.save!

animal11 = Animal.create!(name: 'Lone', category: 'Exotic', species: 'Giraffe', description: 'Long ass giraffe spending days eating leafs', address: '76 Rue Vieille du Temple, 75003 Paris', age: 13, price_per_day: 190, user: aymeric, size: 'Big', sexe: 'female', favorite_food: 'leaves', favorite_game: 'play hide and seek', dos: 'Play outside', donts: 'Put her in confined spaces')
animal11.photo.attach(io: URI.open('https://images.unsplash.com/photo-1485735662814-c4f66e49dbae?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z2lyYWZmZXxlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
animal11.save!

animal12 = Animal.create!(name: 'Riri', category: 'Reptile', species: 'Cobra', description: 'massive cobra who enjoys flute and biting people', address: '76 Rue Vieille du Temple, 75003 Paris', age: 32, price_per_day: 310, user: aymeric, size: 'Big', sexe: 'female', favorite_food: 'humans', favorite_game: 'hide in dark places', dos: 'Leave her in her cage', donts: 'Look her in the eyes')
animal12.photo.attach(io: URI.open('https://images.unsplash.com/photo-1618029933990-91205b2a646d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y29icmF8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
animal12.save!

animal13 = Animal.create!(name: 'Gogo', category: 'Pet', species: 'Goat', description: 'the goat of the goats', address: '29 Rue des Boulangers, 75005 Paris', age: 4, price_per_day: 45, user: aymeric, size: 'small', sexe: 'female', favorite_food: 'carrots', favorite_game: 'show jumping', dos: 'Play outside', donts: 'Yell at her')
animal13.photo.attach(io: URI.open('https://images.unsplash.com/photo-1560888126-5c13ad3f9345?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Z29hdHxlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
animal13.save!

animal14 = Animal.create!(name: 'Chichi', category: 'Amphibian', species: 'Frog', description: 'nice female frog, champion jumper', address: '19 Rue Crozatier, 75012 Paris', age: 10, price_per_day: 130, user: aymeric, size: 'Little', sexe: 'male', favorite_food: 'worms', favorite_game: 'jump', dos: 'Have a pool party with Chichi', donts: 'Kiss him')
animal14.photo.attach(io: URI.open('https://images.unsplash.com/photo-1559253664-ca249d4608c6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZnJvZ3xlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
animal14.save!

animal15 = Animal.create!(name: 'Nero', category: 'Exotic', species: 'Panther', description: 'crazy-looking black panther', address: '6 Rue Saint-Didier, 75016 Paris', age: 11, price_per_day: 165, user: aymeric, size: 'Big', sexe: 'male', favorite_food: 'rabbits', favorite_game: 'sprinting', dos: 'Run with Nero', donts: 'Organise a contest with Usain Bolt, he would loose')
animal15.photo.attach(io: URI.open('https://images.unsplash.com/photo-1557692538-9564c4b2cd13?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmxhY2slMjBwYW50aGVyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
animal15.save!

p "#{Animal.count} animals created"
