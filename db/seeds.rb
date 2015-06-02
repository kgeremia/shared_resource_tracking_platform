# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

theme_hashes = [
  { :name => "Friends, Family and Greetings", :avatar => "http://www.cliparthut.com/clip-arts/594/indian-family-594896.jpg" },
  { :name => "Colors and Geometric Shapes", :avatar => "http://cliparts.co/cliparts/8Tx/nLR/8TxnLRKgc.jpg" },
  { :name => "Body Parts and Numbers", :avatar => "https://s-media-cache-ak0.pinimg.com/236x/87/36/b6/8736b6a9fa0817c71453563c53f12d11.jpg" },
  { :name => "My House", :avatar => "http://www.clker.com/cliparts/O/R/K/G/A/s/whitehouse-hi.png" },
  { :name => "Weather and Clothes", :avatar => "https://mcdn1.teacherspayteachers.com/thumbitem/Cloudweather-clipart-1054576/original-1054576-1.jpg" },
  { :name => "Occupations ", :avatar => "http://images.clipartpanda.com/student-at-desk-clipart-teacher-clip-art_1404120270.jpg" },
  { :name => "Fruits and Vegetables", :avatar => "http://images.clipartpanda.com/fruit-bowl-clipart-fruit-clipart.png" },
  { :name => "The Dentist", :avatar => "http://images.clipartpanda.com/founding-clipart-dentist.png" },
  { :name => "The Doctor", :avatar => "http://images.clipartpanda.com/doctor-clip-art-doctor-clip-art-5.jpg" },
  { :name => "Sea Animals", :avatar => "http://cliparts.co/cliparts/bpc/qMj/bpcqMjET9.png" },
  { :name => "Transportation", :avatar => "http://www.clipartindia.com/cpiadmin/uploads/thumb-autorickshaw-0001.jpg" },
  { :name => "Holidays and Celebrations ", :avatar => "http://vignette3.wikia.nocookie.net/animaljam/images/9/9a/Kids-celebration-clip-art-RiGB8pLiL.gif/revision/latest?cb=20150418011534" },
]

theme_hashes.each do |theme_hash|
  theme = Theme.new
  theme.name = theme_hash[:name]
  theme.avatar = theme_hash[:avatar]
  theme.save
end

puts "There are now #{Theme.count} themes in the database."

resource_hashes = [
{ :name => "Blocks", :theme => "Friends, Family and Greetings" },
{ :name => "Blocks", :theme => "Colors and Geometric Shapes" },
{ :name => "Blocks", :theme => "Body Parts and Numbers" },
{ :name => "Blocks", :theme => "My House" },
{ :name => "Blocks", :theme => "Weather and Clothes" },
{ :name => "Blocks", :theme => "Occupations " },
{ :name => "Blocks", :theme => "Fruits and Vegetables" },
{ :name => "Blocks", :theme => "The Dentist" },
{ :name => "Blocks", :theme => "The Doctor" },
{ :name => "Blocks", :theme => "Sea Animals" },
{ :name => "Blocks", :theme => "Transportation" },
{ :name => "Blocks", :theme => "Holidays and Celebrations " },
{ :name => "Sticks", :theme => "Friends, Family and Greetings" },
{ :name => "Sticks", :theme => "Colors and Geometric Shapes" },
{ :name => "Sticks", :theme => "Body Parts and Numbers" },
{ :name => "Sticks", :theme => "My House" },
{ :name => "Sticks", :theme => "Weather and Clothes" },
{ :name => "Sticks", :theme => "Occupations " },
{ :name => "Sticks", :theme => "Fruits and Vegetables" },
{ :name => "Sticks", :theme => "The Dentist" },
{ :name => "Sticks", :theme => "The Doctor" },
{ :name => "Sticks", :theme => "Sea Animals" },
{ :name => "Sticks", :theme => "Transportation" },
{ :name => "Sticks", :theme => "Holidays and Celebrations " },
{ :name => "Flashcards", :theme => "Friends, Family and Greetings" },
{ :name => "Flashcards", :theme => "Colors and Geometric Shapes" },
{ :name => "Flashcards", :theme => "Body Parts and Numbers" },
{ :name => "Flashcards", :theme => "My House" },
{ :name => "Flashcards", :theme => "Weather and Clothes" },
{ :name => "Flashcards", :theme => "Occupations " },
{ :name => "Flashcards", :theme => "Fruits and Vegetables" },
{ :name => "Flashcards", :theme => "The Dentist" },
{ :name => "Flashcards", :theme => "The Doctor" },
{ :name => "Flashcards", :theme => "Sea Animals" },
{ :name => "Flashcards", :theme => "Transportation" },
{ :name => "Flashcards", :theme => "Holidays and Celebrations " },
{ :name => "Books", :theme => "Friends, Family and Greetings" },
{ :name => "Books", :theme => "Colors and Geometric Shapes" },
{ :name => "Books", :theme => "Body Parts and Numbers" },
{ :name => "Books", :theme => "My House" },
{ :name => "Books", :theme => "Weather and Clothes" },
{ :name => "Books", :theme => "Occupations " },
{ :name => "Books", :theme => "Fruits and Vegetables" },
{ :name => "Books", :theme => "The Dentist" },
{ :name => "Books", :theme => "The Doctor" },
{ :name => "Books", :theme => "Sea Animals" },
{ :name => "Books", :theme => "Transportation" },
{ :name => "Books", :theme => "Holidays and Celebrations " },
]

user = User.new
user.name = "Kate"
user.email = "kate@example.com"
user.password = "12341234"
user.password_confirmation = "12341234"
user.save

3.times do
  user = User.new
  user.name = Faker::Name.name
  user.email = Faker::Internet.email(user.name)
  user.password = "12341234"
  user.password_confirmation = "12341234"
  user.save
end

User.all.each do |user|
  rand(2..3).times do
    network = Network.new
    network.name = Faker::Address.city
    network.user_id = user.id
    network.save

    resource_hashes.each do |resource_hash|
      theme = Theme.find_by({ :name => resource_hash[:theme] })
      resource = Resource.new
      resource.name = resource_hash[:name]
      resource.theme_id = theme.id
      resource.network_id = network.id
      resource.save
    end

    puts "There are now #{Resource.count} resources in the database."

    12.times do
      school = School.new
      school.name = Faker::Company.name
      school.network_id = network.id
      school.save

      teacher = Teacher.new
      teacher.name = Faker::Name.name
      teacher.address = Faker::Address.street_address
      teacher.phone_number = Faker::PhoneNumber.cell_phone
      teacher.avatar = Faker::Avatar.image
      teacher.school_id = school.id
      teacher.network_id = network.id
      puts "1) Teacher " + teacher.name.to_s + " has network_id " + teacher.network_id.to_s
      teacher.save
      puts "           SAVE SUCCESSFUL"
      puts "2) Teacher " + teacher.name.to_s + " has network_id " + teacher.network_id.to_s
    end

    Teacher.all.each do |teacher|
      puts "3) Teacher " + teacher.name.to_s + " has network_id " + teacher.network_id.to_s
    end

    rand(6..10).times do |num|
      meeting = Meeting.new
      meeting.network_id = network.id
      meeting.met_on = num.months.ago
      meeting.save

      network.teachers.each do |teacher|
        attendance = Attendance.new
        attendance.meeting_id = meeting.id
        attendance.teacher_id = teacher.id
        attendance.note = Faker::Lorem.paragraph
        attendance.theme_id = Theme.offset(rand(Theme.count)).first.id
        attendance.attendance = "Present"
        if rand < 0.1
          attendance.attendance = ["Absent", "Excused"].sample
        end
        attendance.save
      end
    end
  end
end




