# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


User.create(fname: "Thant", lname: "Sin", age: 23 , email: "thantsinphyoe18920@gmail.com", phone: "093123", address: "Yangon")
User.create(fname: "Myo", lname: "Pone", age: 22, email: "myoponeponechit@gmail.com", phone: "082112", address: "Kalay")
User.create(fname: "Phue", lname: "Phue", age: 25 , email: "phuephueaung@gmail.com", phone: "21233", address: "Pyay")
User.create(fname: "Ei", lname: "Phyu", age: 22, email: "eiphyushin@gmail.com", phone: "1221221", address: "Chouk")
User.create(fname: "Ei", lname: "Mon", age: 23, email: "eimon@gmail.com", phone: "34437", address: "Kalay")