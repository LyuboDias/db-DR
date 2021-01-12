# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 require "open-uri"

puts 'Cleaning database'
Lesson.destroy_all  
puts 'Database cleaned.'
puts 'Creating new data base.'

example = Lesson.new({
  title: 'Best Lessons in London',
  subtitle: 'Free lessons from the profesional Dr. Sen',
  briefdescription: 'Lesson 1 is for begginers',
  content: "Lyubomir graduated from Le Wagon in September 2020 - it was ranked the world's number 1 coding bootcamp during his studies. He had been programming for many months prior to undergoing his intense training. Lyubomir's forte is front-end web development, but he brings a wider range of skills as a full-stack software engineer.\n
  
  Lyubomir has worked and continues to work in a variety of client-facing jobs including in fitness and transportation.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})
example_pic = URI.open("https://images.pexels.com/photos/714698/pexels-photo-714698.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
example.image.attach(io: example_pic, filename: "example_pic.jpg", content_type: "image/jpg")
example.save!

# ---------------------------------

example_number2 = Lesson.new({
  title: 'Lesson number 2',
  subtitle: 'Free lessons from the profesional Dr. Sen 2222',
  briefdescription: 'Lesson 1 is for advanced',
  content: "Here si the second lesson wooooow yeaaah",
  link: 'https://www.linkedin.com/in/lu-dias/',
})
example_number2_pic = URI.open("https://images.pexels.com/photos/265076/pexels-photo-265076.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
example_number2.image.attach(io: example_number2_pic, filename: "example_number2_pic.jpg", content_type: "image/jpg")
example_number2.save!






puts "Seeding is finished"