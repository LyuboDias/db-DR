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
Disease.destroy_all
GeneralPaediatric.destroy_all
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
example_pic = URI.open("https://res.cloudinary.com/samarnathsen/image/upload/v1611602791/girl-monitor_mgvft6.jpg")
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
example_number2_pic = URI.open("https://res.cloudinary.com/samarnathsen/image/upload/v1611602791/work-desktop_kbjtp4.jpg")
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
heart_murmurs_pic = URI.open("https://res.cloudinary.com/samarnathsen/image/upload/v1611576087/kid-doctor_sov8a1.jpg")
heart_murmurs.image.attach(io: heart_murmurs_pic, filename: "heart_murmurs_pic.jpg", content_type: "image/jpg")

heart_murmurs.save!


faints = GeneralPaediatric.new({
  title: 'Fits, faints and funny turns',
  subtitle: 'Fits, faints and funny turns subtitle',
  content: "I often see children with these problems in my general paediatric clinic. These events can cause considerable worry to parents but mostly are due to quite straightforward things which I can reassure you about, and which rarely need any form of treatment. Occasionally, the underlying cause is more significant, such as epilepsy or an abnormal heart rhythm.
  <br/>
  I may need to arrange tests such as an EEG (brain wave test) or ECG (heart tracing). I have the experience to diagnose what is happening to your child and recommend appropriate treatment or onward referral if necessary.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

faints_pic = URI.open("https://res.cloudinary.com/samarnathsen/image/upload/v1611576087/kid-melon_e0w57r.jpg")
faints.image.attach(io: faints_pic, filename: "faints_pic.jpg", content_type: "image/jpg")

faints.save!

constipation = GeneralPaediatric.new({
  title: 'Constipation',
  subtitle: 'Constipation subtitle',
  content: "Heart murmurs are extra noises heard in the heart. They are quite common and frequently ‘innocent’, meaning that there is nothing actually wrong with your child’s heart. This is more likely if your child is older.
  <br/>
  Depending on what I find, I may have to arrange a chest X–ray and an ECG (heart tracing), neither of which will worry your child. If I feel the murmur may not be innocent, I would need to refer your child to a heart specialist from Birmingham Children’s Hospital.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

constipation_pic = URI.open("https://res.cloudinary.com/samarnathsen/image/upload/v1611576087/kid-mask_aaymaj.jpg")
constipation.image.attach(io: constipation_pic, filename: "constipation_pic.jpg", content_type: "image/jpg")

constipation.save!

infections = GeneralPaediatric.new({
  title: 'Urine infections',
  subtitle: 'Urine infections subtitle',
  content: "Heart murmurs are extra noises heard in the heart. They are quite common and frequently ‘innocent’, meaning that there is nothing actually wrong with your child’s heart. This is more likely if your child is older.
  <br/>
  Depending on what I find, I may have to arrange a chest X–ray and an ECG (heart tracing), neither of which will worry your child. If I feel the murmur may not be innocent, I would need to refer your child to a heart specialist from Birmingham Children’s Hospital.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

infections_pic = URI.open("https://res.cloudinary.com/samarnathsen/image/upload/v1611576087/kid-gluharche_ddgzvn.jpg")
infections.image.attach(io: infections_pic, filename: "infections_pic.jpg", content_type: "image/jpg")

infections.save!

weight = GeneralPaediatric.new({
  title: 'Weight problems',
  subtitle: 'Weight problems subtitle',
  content: "Heart murmurs are extra noises heard in the heart. They are quite common and frequently ‘innocent’, meaning that there is nothing actually wrong with your child’s heart. This is more likely if your child is older.
  <br/>
  Depending on what I find, I may have to arrange a chest X–ray and an ECG (heart tracing), neither of which will worry your child. If I feel the murmur may not be innocent, I would need to refer your child to a heart specialist from Birmingham Children’s Hospital.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

weight_pic = URI.open("https://res.cloudinary.com/samarnathsen/image/upload/v1611576087/kid-milk_uqjy5b.jpg")
weight.image.attach(io: weight_pic, filename: "weight_pic.jpg", content_type: "image/jpg")

weight.save!

diarrhoea = GeneralPaediatric.new({
  title: 'Diarrhoea',
  subtitle: 'Diarrhoea subtitle',
  content: "Heart murmurs are extra noises heard in the heart. They are quite common and frequently ‘innocent’, meaning that there is nothing actually wrong with your child’s heart. This is more likely if your child is older.
  <br/>
  Depending on what I find, I may have to arrange a chest X–ray and an ECG (heart tracing), neither of which will worry your child. If I feel the murmur may not be innocent, I would need to refer your child to a heart specialist from Birmingham Children’s Hospital.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

diarrhoea_pic = URI.open("https://res.cloudinary.com/samarnathsen/image/upload/v1611576087/kid-doctor2_lbtzqa.jpg")
diarrhoea.image.attach(io: diarrhoea_pic, filename: "diarrhoea_pic.jpg", content_type: "image/jpg")

diarrhoea.save!

reflux = GeneralPaediatric.new({
  title: 'Reflux',
  subtitle: 'Reflux subtitle',
  content: "Heart murmurs are extra noises heard in the heart. They are quite common and frequently ‘innocent’, meaning that there is nothing actually wrong with your child’s heart. This is more likely if your child is older.
  <br/>
  Depending on what I find, I may have to arrange a chest X–ray and an ECG (heart tracing), neither of which will worry your child. If I feel the murmur may not be innocent, I would need to refer your child to a heart specialist from Birmingham Children’s Hospital.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

reflux_pic = URI.open("https://res.cloudinary.com/samarnathsen/image/upload/v1611576087/kid-flower_brzt3s.jpg")
reflux.image.attach(io: reflux_pic, filename: "reflux_pic.jpg", content_type: "image/jpg")

reflux.save!

repeated_infections = GeneralPaediatric.new({
  title: 'Repeated infections',
  subtitle: 'Repeated infections subtitle',
  content: "Heart murmurs are extra noises heard in the heart. They are quite common and frequently ‘innocent’, meaning that there is nothing actually wrong with your child’s heart. This is more likely if your child is older.
  <br/>
  Depending on what I find, I may have to arrange a chest X–ray and an ECG (heart tracing), neither of which will worry your child. If I feel the murmur may not be innocent, I would need to refer your child to a heart specialist from Birmingham Children’s Hospital.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

repeated_infections_pic = URI.open("https://res.cloudinary.com/samarnathsen/image/upload/v1611576087/baby_xprtsf.jpg")
repeated_infections.image.attach(io: repeated_infections_pic, filename: "repeated_infections_pic.jpg", content_type: "image/jpg")

repeated_infections.save!

# ---------allergy examples ------------------------

asthma = Disease.new({
  
  title: 'Asthma',
  subtitle: 'Asthma subtitle',
  content: "Heart murmurs are extra noises heard in the heart. They are quite common and frequently ‘innocent’, meaning that there is nothing actually wrong with your child’s heart. This is more likely if your child is older.
  <br/>
  Depending on what I find, I may have to arrange a chest X–ray and an ECG (heart tracing), neither of which will worry your child. If I feel the murmur may not be innocent, I would need to refer your child to a heart specialist from Birmingham Children’s Hospital.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})
asthma_pic = URI.open('https://res.cloudinary.com/samarnathsen/image/upload/v1611576088/kid-teddy_a6s53i.jpg')
asthma.image.attach(io: asthma_pic, filename: 'asthma-pic.png', content_type: 'image/jpg')

asthma.save!


eczema = Disease.new({
  
  title: 'Eczema',
  subtitle: 'Eczema is very common',
  content: "Eczema is very common and affects 15-20% of school children. Even moderate eczema can have a dramatic effect on quality of life. In most cases eczema responds well to treatment with appropriate creams alone. It is well recognised however that allergies can play a significant role in the worsening of many children’s eczema. Identification and exclusion of food or environmental allergens can help improve eczema and reduce the need for conventional treatments such as steroid creams.

A careful, detailed clinical history taken by an experienced physician coupled with allergy tests such as Skin Prick Testing or Specific IgE blood testing, together with provocation challenges remains the most reliable way to reach a diagnosis or exclude allergy as the cause of the problems.

It is also well recognised that even when allergens do not play a role in eczema, many children’s eczema is not as well managed as it could be, and that expert advice on treatment can he helpful to gain better control. I will be able to advise on whether an allergy may be contributing to your child’s eczema and give you an individualised treatment plan.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})
eczema_pic = URI.open('https://res.cloudinary.com/samarnathsen/image/upload/v1611603190/girl2-allergy_ooil9c.jpg')
eczema.image.attach(io: eczema_pic, filename: 'eczema-pic.png', content_type: 'image/jpg')

eczema.save!



# --------------Respiratory Paediatric examples-----

sleep_apnoea = RespiratoryPaediatric.new({ 
  title: 'Sleep Apnoea',
  subtitle: 'Why do children suffer from sleep apnoea?',
  content: "Sleep apnoea happens when the throat relaxes so much during sleep that the walls collapse, making your child's airway narrower than usual. Sometimes enlarged tonsils or adenoids can also cause Sleep apnoea in Children.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

sleep_apnoea_pic = URI.open("https://res.cloudinary.com/samarnathsen/image/upload/v1611576087/kid-balloon_qygtu7.jpg")
sleep_apnoea.image.attach(io: sleep_apnoea_pic, filename: "sleep_apnoea_pic.jpg", content_type: "image/jpg")

sleep_apnoea.save!


insomnia = RespiratoryPaediatric.new({ 
  title: 'Insomnia',
  subtitle: 'Is Insomnia a different type of sleep disorder?',
  content: "Insomnia is a particular kind of sleep disorder that causes problems getting to sleep or staying asleep. Prolonged periods of insomnia can have a significant mental and physical effect on your child and on the rest of the family.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

insomnia_pic = URI.open("https://res.cloudinary.com/samarnathsen/image/upload/v1611603654/insomnia_tbzx9d.jpg")
insomnia.image.attach(io: insomnia_pic, filename: "insomnia_pic.jpg", content_type: "image/jpg")

insomnia.save!


night_terrors = RespiratoryPaediatric.new({ 
  title: 'Night Terrors in Children',
  subtitle: 'Do children usually suffer from Night Terrors?',
  content: "Night terrors are caused by an abnormal sleep state known as parasomnia. Your child seems as if he or she is awake but they are actually in a stage of sleep.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

night_terrors_pic = URI.open("https://res.cloudinary.com/samarnathsen/image/upload/v1611576088/kid-plaster_vl1evb.jpg")
night_terrors.image.attach(io: night_terrors_pic, filename: "night_terrors_pic.jpg", content_type: "image/jpg")

night_terrors.save!



snoring_children = RespiratoryPaediatric.new({ 
  title: 'Snoring In Children',
  subtitle: 'Why do children suffer from sleep apnoea?',
  content: "Sleep apnoea happens when the throat relaxes so much during sleep that the walls collapse, making your child's airway narrower than usual. Sometimes enlarged tonsils or adenoids can also cause Sleep apnoea in Children.",
  link: 'https://www.linkedin.com/in/lu-dias/',
})

snoring_children_pic = URI.open("https://res.cloudinary.com/samarnathsen/image/upload/v1611576087/kid-bycicle_sjyigy.jpg")
snoring_children.image.attach(io: snoring_children_pic, filename: "snoring_children_pic.jpg", content_type: "image/jpg")

snoring_children.save!


puts "Seeding is finished"