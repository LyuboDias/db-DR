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

# -----courses examples-----------------
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


# --------------GP examples-------------------

heart_murmurs = GeneralPaediatric.new({
  title: 'Heart Murmurs',
  subtitle: 'Heart Murmurs subtitle',
  content: "Heart murmurs are extra noises heard in the heart. They are quite common and frequently ‘innocent’, meaning that there is nothing actually wrong with your child’s heart. This is more likely if your child is older.
  <br/>
  Depending on what I find, I may have to arrange a chest X–ray and an ECG (heart tracing), neither of which will worry your child. If I feel the murmur may not be innocent, I would need to refer your child to a heart specialist from Birmingham Children’s Hospital.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

heart_murmurs.save!


faints = GeneralPaediatric.new({
  title: 'Fits, faints and funny turns',
  subtitle: 'Fits, faints and funny turns subtitle',
  content: "I often see children with these problems in my general paediatric clinic. These events can cause considerable worry to parents but mostly are due to quite straightforward things which I can reassure you about, and which rarely need any form of treatment. Occasionally, the underlying cause is more significant, such as epilepsy or an abnormal heart rhythm.
  <br/>
  I may need to arrange tests such as an EEG (brain wave test) or ECG (heart tracing). I have the experience to diagnose what is happening to your child and recommend appropriate treatment or onward referral if necessary.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

faints.save!

constipation = GeneralPaediatric.new({
  title: 'Constipation',
  subtitle: 'Constipation subtitle',
  content: "Heart murmurs are extra noises heard in the heart. They are quite common and frequently ‘innocent’, meaning that there is nothing actually wrong with your child’s heart. This is more likely if your child is older.
  <br/>
  Depending on what I find, I may have to arrange a chest X–ray and an ECG (heart tracing), neither of which will worry your child. If I feel the murmur may not be innocent, I would need to refer your child to a heart specialist from Birmingham Children’s Hospital.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

constipation.save!

infections = GeneralPaediatric.new({
  title: 'Urine infections',
  subtitle: 'Urine infections subtitle',
  content: "Heart murmurs are extra noises heard in the heart. They are quite common and frequently ‘innocent’, meaning that there is nothing actually wrong with your child’s heart. This is more likely if your child is older.
  <br/>
  Depending on what I find, I may have to arrange a chest X–ray and an ECG (heart tracing), neither of which will worry your child. If I feel the murmur may not be innocent, I would need to refer your child to a heart specialist from Birmingham Children’s Hospital.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

infections.save!

weight = GeneralPaediatric.new({
  title: 'Weight problems',
  subtitle: 'Weight problems subtitle',
  content: "Heart murmurs are extra noises heard in the heart. They are quite common and frequently ‘innocent’, meaning that there is nothing actually wrong with your child’s heart. This is more likely if your child is older.
  <br/>
  Depending on what I find, I may have to arrange a chest X–ray and an ECG (heart tracing), neither of which will worry your child. If I feel the murmur may not be innocent, I would need to refer your child to a heart specialist from Birmingham Children’s Hospital.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

weight.save!

diarrhoea = GeneralPaediatric.new({
  title: 'Diarrhoea',
  subtitle: 'Diarrhoea subtitle',
  content: "Heart murmurs are extra noises heard in the heart. They are quite common and frequently ‘innocent’, meaning that there is nothing actually wrong with your child’s heart. This is more likely if your child is older.
  <br/>
  Depending on what I find, I may have to arrange a chest X–ray and an ECG (heart tracing), neither of which will worry your child. If I feel the murmur may not be innocent, I would need to refer your child to a heart specialist from Birmingham Children’s Hospital.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

diarrhoea.save!

reflux = GeneralPaediatric.new({
  title: 'Reflux',
  subtitle: 'Reflux subtitle',
  content: "Heart murmurs are extra noises heard in the heart. They are quite common and frequently ‘innocent’, meaning that there is nothing actually wrong with your child’s heart. This is more likely if your child is older.
  <br/>
  Depending on what I find, I may have to arrange a chest X–ray and an ECG (heart tracing), neither of which will worry your child. If I feel the murmur may not be innocent, I would need to refer your child to a heart specialist from Birmingham Children’s Hospital.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

reflux.save!

repeated_infections = GeneralPaediatric.new({
  title: 'Repeated infections',
  subtitle: 'Repeated infections subtitle',
  content: "Heart murmurs are extra noises heard in the heart. They are quite common and frequently ‘innocent’, meaning that there is nothing actually wrong with your child’s heart. This is more likely if your child is older.
  <br/>
  Depending on what I find, I may have to arrange a chest X–ray and an ECG (heart tracing), neither of which will worry your child. If I feel the murmur may not be innocent, I would need to refer your child to a heart specialist from Birmingham Children’s Hospital.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

repeated_infections.save!

# ---------allergy examples ------------------------

asthma = Allergy.new({
  
  title: 'Asthma',
  subtitle: 'Asthma subtitle',
  content: "Heart murmurs are extra noises heard in the heart. They are quite common and frequently ‘innocent’, meaning that there is nothing actually wrong with your child’s heart. This is more likely if your child is older.
  <br/>
  Depending on what I find, I may have to arrange a chest X–ray and an ECG (heart tracing), neither of which will worry your child. If I feel the murmur may not be innocent, I would need to refer your child to a heart specialist from Birmingham Children’s Hospital.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

asthma.save!


puts "Seeding is finished"