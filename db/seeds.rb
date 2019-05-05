# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# # https://i.ibb.co/zm3XB8y/citymain.png
# # https://i.ibb.co/vk9yTYF/cliff.png
# # https://i.ibb.co/XCwpM86/cliff2.png
# # https://i.ibb.co/DLC2csT/fieldnightlarge.png
# # https://i.ibb.co/3NCMv1q/fieldnightlarge2.png
# # https://i.ibb.co/t8yd2Vh/fieldocean.png
# # https://i.ibb.co/vZVwgj8/fieldsgreen.png
# # https://i.ibb.co/mtL5JKp/fieldwoods.png
# # https://i.ibb.co/sKkH4CY/goalnight.png
# # https://i.ibb.co/QM2sg7Y/indoor.png
# # https://i.ibb.co/64j8MjR/indoor2.png
# # https://i.ibb.co/pyPKGvx/stadium.png
# # https://i.ibb.co/S6Kwrbn/stadiumfield.png
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

 puts "Seeding....."

 #Soccer Cage Brickell
 l_one = Location.create(name: "Soccer Cage Brickell", street: "301 SW 8th St" , city: "Miami" , zipcode: "33130", state: "FL", url: "https://www.soccercagemiami.com", phone: "305-343-1757", neighborhood: "Brickell", lat: "25.7666", lon: "-80.1998", price: 900, description: "Test description for Soccer Cage Brickell", open: 19, close: 22,img: 'https://i.ibb.co/zm3XB8y/citymain.png' ,img2: 'https://i.ibb.co/DLC2csT/fieldnightlarge.png' ,img3: 'https://i.ibb.co/vk9yTYF/cliff.png')

 l_one_f_one = Field.create(game_type: 4,surface: "turf",outdoor: true, location: l_one)
 l_one_f_two = Field.create(game_type: 5,surface: "turf",outdoor: true, location: l_one)
 l_one_f_three = Field.create(game_type: 6,surface: "turf",outdoor: true, location: l_one)

 #Downtown Soccer Miami
 l_two = Location.create(name: "Downtown Soccer Miami", street: "444 NW 5th St" , city: "Miami" , zipcode: "33128", state: "FL", url: "https://www.downtownsoccermiami.com", phone: "305-808-9997", neighborhood: "Downtown", lat: "25.7784", lon: "-80.2021", price: 1000, description: "Test description for Downtown Soccer Miami",open: 18, close: 22,img: 'https://i.ibb.co/t8yd2Vh/fieldocean.png'  ,img2: 'https://i.ibb.co/S6Kwrbn/stadiumfield.png' ,img3: 'https://i.ibb.co/DLC2csT/fieldnightlarge.png' )

 l_two_f_one = Field.create(game_type: 6,surface: "turf",outdoor: true, location: l_two)
 l_two_f_two = Field.create(game_type: 7,surface: "turf",outdoor: true, location: l_two)

 #Brickell Soccer Rooftop
 l_three = Location.create(name: "Brickell Soccer Rooftop", street: "444 Brickell Ave, 2nd Fl" , city: "Miami" , zipcode: "33131", state: "FL", url: "http://soccerooftop.com", phone: "305-967-3512", neighborhood: "Brickell", lat: "25.7691", lon: "-80.1903", price: 1200, description: "Test description for Brickell Soccer Rooftop",open: 18, close: 22,img: 'https://i.ibb.co/zm3XB8y/citymain.png' ,img2: 'https://i.ibb.co/mtL5JKp/fieldwoods.png',img3:'https://i.ibb.co/vk9yTYF/cliff.png' )

 l_three_f_one = Field.create(game_type: 5,surface: "turf",outdoor: true, location: l_three)
 l_three_f_two = Field.create(game_type: 6,surface: "turf",outdoor: true, location: l_three)

 #Americas Got Soccer
 l_four = Location.create(name: "Americas Got Soccer", street: "3488 N Andrews Ave" , city: "Fort Lauderdale" , zipcode: "33309", state: "FL", url: "http://www.americasgotsoccer.com/", phone: "9549900611", neighborhood: "Oakland Park", lat: "26.1708", lon: "-80.1453", price: 1200, description: "Test description for Americas Got Soccer",open: 18, close: 23,img: 'https://i.ibb.co/QM2sg7Y/indoor.png',img2: 'https://i.ibb.co/64j8MjR/indoor2.png' ,img3: 'https://i.ibb.co/S6Kwrbn/stadiumfield.png' )

 l_four_f_one = Field.create(game_type: 5,surface: "turf",outdoor: false, location: l_four)
 l_four_f_two = Field.create(game_type: 6,surface: "turf",outdoor: false, location: l_four)

 #Miami Soccer Station
 l_five = Location.create(name: "Miami Soccer Station", street: "431 NW 79th St" , city: "Miami" , zipcode: "33150", state: "FL", url: "https://www.miamisoccerstation.com/parkwebsite/miamisoccerstation", phone: "786-458-6365", neighborhood: "Brickell", lat: "25.8474", lon: "-80.2042", price: 1100, description: "Test description for Miami Soccer Station",open: 16, close: 22, img:'https://i.ibb.co/t8yd2Vh/fieldocean.png',img2: 'https://i.ibb.co/DLC2csT/fieldnightlarge.png',img3: 'https://i.ibb.co/XCwpM86/cliff2.png' )

 l_five_f_one = Field.create(game_type: 5,surface: "turf",outdoor: true, location: l_five)
 l_five_f_two = Field.create(game_type: 5,surface: "turf",outdoor: true, location: l_five)

 #SDG Soccer Complex
 l_six = Location.create(name: "SDG Soccer Complex", street: "16601 NE 15th Ave" , city: "Miami" , zipcode: "33162", state: "FL", url: "http://www.sdgsoccer.com/", phone: "3059750316", neighborhood: "North Miami Beach", lat: "25.9283", lon: "-80.1687", price: 1000, description: "Test description for SDG Soccer Complex",open: 16, close: 22,img:'https://i.ibb.co/64j8MjR/indoor2.png',img2:'https://i.ibb.co/zm3XB8y/citymain.png',img3:'https://i.ibb.co/vk9yTYF/cliff.png' )

 l_six_f_one = Field.create(game_type: 7,surface: "turf",outdoor: true, location: l_six)
 l_six_f_two = Field.create(game_type: 7,surface: "turf",outdoor: true, location: l_six)

 #Dowdy Field
 l_seven = Location.create(name: "Dowdy Field", street: "2100 Johnson St" , city: "Hollywood" , zipcode: "33020", state: "FL", url: "https://www.yelp.com/biz/dowdy-field-hollywood?osq=soccer+fields", phone: "9549900611", neighborhood: "Hollywood", lat: "26.0197", lon: "-80.1504", price: 700, description: "Test description for Dowdy Field",open: 20, close: 22,img: 'https://i.ibb.co/3NCMv1q/fieldnightlarge2.png' ,img2: 'https://i.ibb.co/sKkH4CY/goalnight.png' ,img3: 'https://i.ibb.co/mtL5JKp/fieldwoods.png' )

 l_sevenf_one = Field.create(game_type: 11,surface: "turf",outdoor: true, location: l_seven)

 #Holiday Park Soccer Fields
 l_eight = Location.create(name: "Holiday Park Soccer Fields", street: "1150 G. Harold Martin Dr" , city: "Fort Lauderdale" , zipcode: "33304", state: "FL", url: "https://www.fortlauderdale.gov/departments/parks-recreation/city-parks/holiday-park", phone: "9548285383", neighborhood: "Fort Lauderdale", lat: "26.1331", lon: "-80.1323", price: 800, description: "Test description for Holiday Park Soccer Fields",open: 16, close: 19,img: 'https://i.ibb.co/3NCMv1q/fieldnightlarge.png',img2: 'https://i.ibb.co/DLC2csT/fieldnightlarge2.png',img3: 'https://i.ibb.co/sKkH4CY/goalnight.png' )

 l_eightf_one = Field.create(game_type: 11,surface: "grass", outdoor: true, location: l_eight)

 #Urban Soccer Five
 l_nine = Location.create(name: "Urban Soccer Five", street: "1125 NW 71st St" , city: "Miami" , zipcode: "33304", state: "FL", url: "http://urbansoccerfive.com/", phone: "786253288", neighborhood: "Little Haiti", lat: "25.8397", lon: "-80.2156", price: 1100, description: "Test description for Urban Soccer Five",open: 17, close: 22, img:'https://i.ibb.co/64j8MjR/indoor2.png',img2:'https://i.ibb.co/zm3XB8y/citymain.png',img3:'https://i.ibb.co/vk9yTYF/cliff.png')

 l_ninef_one = Field.create(game_type: 5,surface: "turf", outdoor: false, location: l_nine)
 l_ninef_one = Field.create(game_type: 6,surface: "turf", outdoor: false, location: l_nine)

  #Indoor Soccer Place
  l_ten = Location.create(name: "Indoor Soccer Place", street: "5900 Stirling Rd #3" , city: "Hollywood" , zipcode: "33021", state: "FL", url: "http://www.indoorsoccerpl.com/", phone: "7549717107", neighborhood: "Hollywood", lat: "26.0465", lon: "-80.2079", price: 1000, description: "Test description for Indoor Soccer Place",open: 16, close: 20, img:'https://i.ibb.co/t8yd2Vh/fieldocean.png',img2: 'https://i.ibb.co/DLC2csT/fieldnightlarge.png',img3: 'https://i.ibb.co/XCwpM86/cliff2.png' )

  l_tenf_one = Field.create(game_type: 5,surface: "turf", outdoor: false, location: l_ten)
  l_tenf_one = Field.create(game_type: 5,surface: "turf", outdoor: false, location: l_ten)



 Field.all.each do |field|
   field.location.open.upto(field.location.close).each do |time|
     0.upto(7).each do |day|
       Event.create(
        datetime: DateTime.new(2019, Date.today.strftime("%m").to_i, ((Date.today+day).strftime("%d").to_i), time, 0, 0),
         price: field.location.price,
         field: field
       )
     end
   end
 end

# create users and reservations

require 'open-uri'

 User.destroy_all

 200.times do |n|
   user = User.create!(
           email:      Faker::Internet.email,
           password:   'password'
         )
   profile = Profile.create!(
     name: Faker::Name.first_name,
     position:  ["Forward", "Midfielder","Defender","Goalie"].sample,
     user:       user
   )
  url = "https://randomuser.me/api/portraits/#{['men', 'women'].sample}/#{rand(1..20)}.jpg"
   image = open(url)
   profile.pic.attach(io: image, filename: "pic.jpg")
   p "#{n} users"
 end


2000.times do |n|
  e = Event.event_open.sample.id
  u = User.count
  Reservation.create(
    event_id: e,
    user_id:  rand(1..u).to_i,
  )
end

puts "Locations: #{Location.count}"
puts "Fields: #{Field.count}"
puts "Events: #{Event.count}"
puts "#{User.count} users in the system..."
puts "#{Reservation.count} reservations..."