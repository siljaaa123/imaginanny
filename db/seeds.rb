# You need the images folder and its path

# Then define file_path
file_path = "/Users/oceane/Downloads/images/"

require 'open-uri'

puts 'Cleaning database...'
Character.destroy_all
User.destroy_all
puts 'Creating characters and users...'

user = User.create!(
  email: 'voldemort@gmail.com',
  password: "password",
  password_confirmation: "password",
  first_name: "Tom",
  last_name: "Riddle",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + "Little Hangleton"
)
character = Character.new(
  character_name: "Lord Voldemort",
  category: "Villains",
  description: "Treat your little one to a taste of dark magic with Lord Voldemort! Known for his expertise in the Dark Arts, Voldemort offers a unique babysitting experience that will leave your child spellbound. With a background in wizardry and a knack for mischief, Voldemort is perfect for children who enjoy a bit of adventure. Despite his dark reputation, rest assured that your child's safety is his top priority. Let Voldemort take care of your little wizard or witch and watch as they embark on magical adventures together!",
  price: 25,
  user_id: user.id
)
character.photo.attach(io: File.open("#{file_path}voldemort.png"), filename: 'image.jpg')
character.save!

addams_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Morticia",
  last_name: "Addams",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + "Spooky Manor"
)
addams_family = Character.new(
  character_name: "Addams Family",
  category: "Family",
  description: "Welcome to the Addams Family! With their quirky and macabre charm, this eccentric family is ready to entertain and care for your little ones. From Morticia's elegance to Wednesday's dark humor and Gomez's enthusiasm, your child will experience a babysitting adventure like no other. Treat your child to a spooky yet delightful time with the Addams Family!",
  price: 40,
  user_id: addams_user.id
)
addams_family.photo.attach(io:File.open("#{file_path}addams family.webp"), filename: 'image.jpg')
addams_family.save!


hsm_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Sharpay",
  last_name: "Evans",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + "East High"
)
ryan_sharpay = Character.new(
  character_name: "Ryan and Sharpay",
  category: "Family",
  description: "Introducing Ryan and Sharpay from High School Musical! With their love for music, dance, and all things glamorous, this dynamic duo will turn babysitting into a fabulous performance your child won't forget. Whether it's singing, dancing, or styling, Ryan and Sharpay will make sure your child feels like a star!",
  price: 45,
  user_id: hsm_user.id
)
ryan_sharpay.photo.attach(io: File.open("#{file_path}ryan and sharpay.webp"), filename: 'image.jpg')
ryan_sharpay.save!

shrek_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Donkey",
  last_name: "Shrek",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + "Far Far Away"
)
donkey_dragon = Character.new(
  character_name: "Donkey and Dragon",
  category: "Family",
  description: "Get ready for a magical babysitting experience with Donkey and Dragon from the Shrek universe! Donkey brings endless chatter and infectious energy, while Dragon adds a touch of fire-breathing excitement. Together, they'll keep your child entertained and safe on an adventure they'll never forget!",
  price: 30,
  user_id: shrek_user.id
)
donkey_dragon.photo.attach(io: File.open("#{file_path}donkey and dragon.jpeg"), filename: 'image.jpg')
donkey_dragon.save!

user_thanos = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Thanos",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_mary_poppins = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Mary",
  last_name: "Poppins",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_batman = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Bruce",
  last_name: "Wayne",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_yzma_kronk = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Yzma",
  last_name: "Kronk",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_aragorn = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Aragorn",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

thanos = Character.new(
  character_name: "Thanos",
  category: "Villains",
  description: "One snap from Thanos and your child will nap! With his unparalleled strength and determination, Thanos will ensure that your child's bedtime routine is perfectly balanced, as all things should be. Let the Mad Titan take care of your little one and watch as they drift off to sleep effortlessly.",
  price: 35,
  user_id: user_thanos.id
)
thanos.photo.attach(io: File.open("#{file_path}thanos.webp"), filename: 'image.jpg')
thanos.save!

mary_poppins = Character.new(
  character_name: "Mary Poppins",
  category: "Family",
  description: "Treat your little one to a spoonful of sugar at bedtime with Mary Poppins! With her magical umbrella and cheerful disposition, Mary Poppins will make bedtime a delightful experience for your child. Let her enchanting songs and whimsical stories transport your child to a world of imagination and wonder.",
  price: 40,
  user_id: user_mary_poppins.id
)
mary_poppins.photo.attach(io: File.open("#{file_path}mary poppins.jpeg"), filename: 'image.jpg')
mary_poppins.save!

batman = Character.new(
  character_name: "Batman",
  category: "Action",
  description: "Gotham's Dark Knight is here to protect and babysit! With his high-tech gadgets and unparalleled combat skills, Batman will keep your child safe from any bedtime villains. Let Batman's bravery and determination inspire your child as they drift off to sleep feeling like a superhero!",
  price: 45,
  user_id: user_batman.id
)
batman.photo.attach(io: File.open("#{file_path}batman.avif"), filename: 'image.jpg')
batman.save!

yzma_kronk = Character.new(
  character_name: "Yzma and Kronk",
  category: "Villains",
  description: "Enter the wacky world of Yzma and Kronk from The Emperor's New Groove! With Yzma's devious schemes and Kronk's lovable goofiness, this oddball pair will provide endless entertainment for your child. Let Yzma and Kronk's hilarious antics turn bedtime into a laughter-filled adventure!",
  price: 30,
  user_id: user_yzma_kronk.id
)
yzma_kronk.photo.attach(io: File.open("#{file_path}Yzma.jpeg"), filename: 'image.jpg')
yzma_kronk.save!

aragorn = Character.new(
  character_name: "Aragorn",
  category: "Action",
  description: "From the depths of Middle-earth comes Aragorn, the ranger of the North! With his bravery, wisdom, and leadership skills, Aragorn will guide your child through the bedtime journey like a true hero. Let Aragorn's tales of adventure and courage inspire your child as they drift off to sleep feeling like a hero!",
  price: 50,
  user_id: user_aragorn.id
)
aragorn.photo.attach(io: File.open("#{file_path}aragorn.webp"), filename: 'image.jpg')
aragorn.save!

user_lilo_stitch = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Lilo",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_nani = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Nani",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_jumba_pleakley = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Jumba",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_cobra = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Cobra",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

lilo_stitch = Character.new(
  character_name: "Lilo and Stitch",
  category: "Family",
  description: "Meet Lilo and Stitch, the dynamic duo from the island of Hawaii! Lilo, a spirited young girl, and Stitch, an alien experiment with a heart of gold, will bring joy and laughter to your child's life. Join them on their adventures as they learn about ohana (family) and friendship!",
  price: 40,
  user_id: user_lilo_stitch.id
)
lilo_stitch.photo.attach(io: File.open("#{file_path}lilo and stitch.jpeg"), filename: 'image.jpg')
lilo_stitch.save!

nani = Character.new(
  character_name: "Nani",
  category: "Family",
  description: "Nani is Lilo's older sister and guardian, trying her best to raise her after the loss of their parents. Despite facing numerous challenges, Nani is a loving and devoted sister who will do anything for her family. Let Nani's strength and determination inspire your child!",
  price: 35,
  user_id: user_nani.id
)
nani.photo.attach(io: File.open("#{file_path}Nani.webp"), filename: 'image.jpg')
nani.save!

jumba_pleakley = Character.new(
  character_name: "Jumba and Pleakley",
  category: "Family",
  description: "Jumba Jookiba, the mad scientist, and Pleakley, the ex-CIA agent turned Earth expert, are an odd pair tasked with capturing Stitch. However, they soon become part of Lilo and Stitch's ohana (family) and learn the true meaning of friendship and acceptance. Join Jumba and Pleakley on their hilarious adventures as they navigate life on Earth!",
  price: 30,
  user_id: user_jumba_pleakley.id
)
jumba_pleakley.photo.attach(io: File.open("#{file_path}Pleakley and Jumba.png"), filename: 'image.jpg')
jumba_pleakley.save!

cobra = Character.new(
  character_name: "Cobra Bubbles",
  category: "Action",
  description: "Cobra Bubbles is a former CIA agent who now works as a social worker. Despite his tough exterior, Cobra cares deeply for Lilo and Nani's well-being and often intervenes to ensure they are safe and cared for. Let Cobra's wisdom and guidance help your child navigate life's challenges!",
  price: 45,
  user_id: user_cobra.id
)
cobra.photo.attach(io: File.open("#{file_path}cobra-bubbles.avif"), filename: 'image.jpg')
cobra.save!

user_incredibles = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Incredibles",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_monsters = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Monsters",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_inside_out = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Inside",
  last_name: "Out",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "The Incredibles Family",
  category: "Family",
  description: "Meet The Incredibles - Mr. Incredible, Elastigirl, Dash, and Violet! This super family will bring excitement and adventure to your child's life. With their unique superpowers and strong bond, The Incredibles will teach your child the importance of teamwork and family!",
  price: 50,
  user_id: user_incredibles.id
)
character.photo.attach(io: File.open("#{file_path}the-incredibles.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Mike and Sulley",
  category: "Family",
  description: "Join Mike Wazowski and Sulley, the top scare team from Monsters, Inc., on their hilarious adventures! With Mike's wit and Sulley's big heart, this dynamic duo will keep your child entertained and laughing for hours. Let Mike and Sulley show your child the power of friendship and overcoming fears!",
  price: 45,
  user_id: user_monsters.id
)
character.photo.attach(io: File.open("#{file_path}mike and sully.webp"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Joy and Sadness",
  category: "Family",
  description: "Experience the emotional journey of Joy and Sadness from Inside Out! With Joy's boundless enthusiasm and Sadness' compassionate nature, this duo will help your child understand and navigate their emotions. Let Joy and Sadness teach your child the importance of embracing all feelings and finding joy in every moment!",
  price: 40,
  user_id: user_inside_out.id
)
character.photo.attach(io: File.open("#{file_path}joy and sadness.jpeg"), filename: 'image.jpg')
character.save!

user_woody = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Woody",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_buzz = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Buzz",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_nemo = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Nemo",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_dory = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Dory",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_mcqueen = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "McQueen",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_mater = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Mater",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_ratatouille = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Remy",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_walle = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Wall-E",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_eve = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Eve",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Woody",
  category: "Pixar",
  description: "Meet Woody, the beloved cowboy from Toy Story! With his loyal heart and adventurous spirit, Woody will take your child on exciting journeys through the Wild West and beyond. Let Woody be your child's loyal companion and best friend!",
  price: 40,
  user_id: user_woody.id
)
character.photo.attach(io: File.open("#{file_path}woody.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Buzz Lightyear",
  category: "Pixar",
  description: "To infinity and beyond! Buzz Lightyear, the space ranger from Toy Story, is ready for adventure. With his courage and determination, Buzz will inspire your child to reach for the stars and explore the wonders of the universe!",
  price: 45,
  user_id: user_buzz.id
)
character.photo.attach(io: File.open("#{file_path}buzz lightyear.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Nemo",
  category: "Pixar",
  description: "Join Nemo, the adventurous clownfish from Finding Nemo, on a journey across the ocean! With his curious nature and brave heart, Nemo will teach your child the importance of courage, friendship, and never giving up!",
  price: 35,
  user_id: user_nemo.id
)
character.photo.attach(io: File.open("#{file_path}nemo.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Dory",
  category: "Pixar",
  description: "Just keep swimming! Dory, the forgetful yet lovable blue tang fish from Finding Nemo/Finding Dory, will charm your child with her optimism and kindness. Let Dory's adventures inspire your child to embrace life's challenges with a smile!",
  price: 35,
  user_id: user_dory.id
)
character.photo.attach(io: File.open("#{file_path}dory.webp"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Lightning McQueen",
  category: "Pixar",
  description: "Ka-chow! Lightning McQueen, the racing superstar from Cars, is ready to rev up the fun. With his speed and determination, McQueen will inspire your child to chase their dreams and never give up, even when the road gets tough!",
  price: 45,
  user_id: user_mcqueen.id
)
character.photo.attach(io: File.open("#{file_path}lightning mcqueen.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Mater",
  category: "Pixar",
  description: "Git-r-done! Mater, the lovable tow truck from Cars, is always ready for a good time. With his down-to-earth charm and folksy wisdom, Mater will teach your child the value of friendship and the joy of simple pleasures!",
  price: 40,
  user_id: user_mater.id
)
character.photo.attach(io: File.open("#{file_path}mater.png"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Remy",
  category: "Pixar",
  description: "Anyone can cook! Remy, the passionate rat chef from Ratatouille, is ready to whip up some culinary magic. With his creativity and ambition, Remy will inspire your child to follow their dreams and embrace their unique talents!",
  price: 40,
  user_id: user_ratatouille.id
)
character.photo.attach(io: File.open("#{file_path}remy ratatouille.webp"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "WALL-E",
  category: "Pixar",
  description: "WALL-E, the lovable robot from the future, is on a mission to clean up the Earth and find love. With his innocence and determination, WALL-E will remind your child of the importance of compassion, environmental stewardship, and never losing hope!",
  price: 50,
  user_id: user_walle.id
)
character.photo.attach(io: File.open("#{file_path}wall-e.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Eve",
  category: "Pixar",
  description: "Eve, the sleek and sophisticated robot from WALL-E, is on a mission to save humanity. With her strength and intelligence, Eve will captivate your child's imagination and inspire them to explore the wonders of technology and the cosmos!",
  price: 50,
  user_id: user_eve.id
)
character.photo.attach(io: File.open("#{file_path}eve.jpeg"), filename: 'image.jpg')
character.save!

user_mickey_minne = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Mickey",
  last_name: "Mouse",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_timon_pumbaa = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Timon",
  last_name: "Pumbaa",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_peter_tinker = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Peter",
  last_name: "Tinker",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_anna_elsa = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Anna",
  last_name: "Elsa",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Mickey and Minnie",
  category: "Family",
  description: "Join Mickey and Minnie, the iconic duo from Disney, on their magical adventures! With their charm and joyous spirit, Mickey and Minnie will bring happiness and laughter to your child's life. Let them be your child's guide to the wonderful world of imagination!",
  price: 45,
  user_id: user_mickey_minne.id
)
character.photo.attach(io: File.open("#{file_path}micky and minnie.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Timon and Pumbaa",
  category: "Family",
  description: "Hakuna Matata! Timon and Pumbaa, the lovable meerkat and warthog duo from The Lion King, are here to teach your child the carefree philosophy of 'no worries'. With their humor and wisdom, Timon and Pumbaa will make every day a jungle adventure!",
  price: 40,
  user_id: user_timon_pumbaa.id
)
character.photo.attach(io: File.open("#{file_path}timon & pumbaa.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Peter Pan and Tinker Bell",
  category: "Family",
  description: "Fly to Neverland with Peter Pan and Tinker Bell, the mischievous duo from the classic tale! With their magic and wonder, Peter and Tinker Bell will whisk your child away on daring escapades and thrilling adventures. Let them be your child's guide to the world of dreams!",
  price: 40,
  user_id: user_peter_tinker.id
)
character.photo.attach(io: File.open("#{file_path}peter pan and tinkerbell.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Anna and Elsa",
  category: "Family",
  description: "Experience the enchanting bond of sisterhood with Anna and Elsa, the royal sisters from Frozen! With their courage and love, Anna and Elsa will warm your child's heart and inspire them to embrace their inner strength. Let them be your child's guide to the power of love and friendship!",
  price: 45,
  user_id: user_anna_elsa.id
)
character.photo.attach(io: File.open("#{file_path}elsa and anna.jpeg"), filename: 'image.jpg')
character.save!

user_donald = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Donald",
  last_name: "Duck",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_cinderella = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Cinderella",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_snow_white = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Snow",
  last_name: "White",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_ariel = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Ariel",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_belle = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Belle",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_aladdin = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Aladdin",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_jasmine = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Jasmine",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_simba = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Simba",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_mufasa = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Mufasa",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_mulan = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Mulan",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Donald Duck",
  category: "Disney",
  description: "Quack! Quack! Meet Donald Duck, the hilarious and hot-tempered duck from Disney! With his unforgettable voice and comedic antics, Donald will keep your child entertained for hours. Let Donald be your child's favorite feathered friend!",
  price: 35,
  user_id: user_donald.id
)
character.photo.attach(io: File.open("#{file_path}donald duck.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Cinderella",
  category: "Disney",
  description: "Bibbidi-bobbidi-boo! Meet Cinderella, the kind-hearted princess who proves that dreams really do come true. With her grace and determination, Cinderella will inspire your child to believe in magic and never give up on their dreams!",
  price: 40,
  user_id: user_cinderella.id
)
character.photo.attach(io: File.open("#{file_path}cinderella.webp"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Snow White",
  category: "Disney",
  description: "Mirror, mirror, on the wall, who's the fairest of them all? Snow White, the gentle princess with skin as white as snow and lips as red as roses, will enchant your child with her timeless tale of love and courage. Let Snow White be your child's guide to a world of fantasy and wonder!",
  price: 40,
  user_id: user_snow_white.id
)
character.photo.attach(io: File.open("#{file_path}snow white.webp"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Ariel",
  category: "Disney",
  description: "Under the sea! Dive into an ocean of adventure with Ariel, the adventurous mermaid princess from The Little Mermaid. With her curiosity and bravery, Ariel will inspire your child to explore new worlds and follow their heart!",
  price: 45,
  user_id: user_ariel.id
)
character.photo.attach(io: File.open("#{file_path}little mermaid.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Belle",
  category: "Disney",
  description: "Tale as old as time! Meet Belle, the book-loving beauty from Beauty and the Beast. With her intelligence and compassion, Belle will teach your child the importance of kindness, courage, and seeing beyond appearances!",
  price: 45,
  user_id: user_belle.id
)
character.photo.attach(io: File.open("#{file_path}beauty and the beast.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Aladdin",
  category: "Disney",
  description: "A whole new world! Join Aladdin, the street-smart diamond in the rough, on a magical carpet ride through the streets of Agrabah. With his wit and charm, Aladdin will show your child that true riches come from the heart!",
  price: 40,
  user_id: user_aladdin.id
)
character.photo.attach(io: File.open("#{file_path}aladdin.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Jasmine",
  category: "Disney",
  description: "Discover a whole new world with Jasmine, the adventurous princess from Aladdin! With her independent spirit and sense of justice, Jasmine will inspire your child to stand up for what they believe in and pursue their dreams!",
  price: 40,
  user_id: user_jasmine.id
)
character.photo.attach(io: File.open("#{file_path}jasmine.webp"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Simba",
  category: "Disney",
  description: "Hakuna Matata! Meet Simba, the courageous lion cub who becomes king of the Pride Lands in The Lion King. With his bravery and resilience, Simba will teach your child the importance of facing their fears and embracing their destiny!",
  price: 45,
  user_id: user_simba.id
)
character.photo.attach(io: File.open("#{file_path}simba.webp"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Mufasa",
  category: "Disney",
  description: "Remember who you are. Mufasa, the wise and noble lion king from The Lion King, will guide your child with his words of wisdom and strength. Let Mufasa be your child's guiding light in the circle of life!",
  price: 45,
  user_id: user_mufasa.id
)
character.photo.attach(io: File.open("#{file_path}mufasa.jpg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Mulan",
  category: "Disney",
  description: "Be true to yourself! Join Mulan, the brave and resourceful warrior princess, on her journey to save China. With her courage and determination, Mulan will inspire your child to stand up for what's right and believe in themselves!",
  price: 40,
  user_id: user_mulan.id
)
character.photo.attach(io: File.open("#{file_path}mulan.jpeg"), filename: 'image.jpg')
character.save!

user_black_widow_hawkeye = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Black Widow",
  last_name: "Hawkeye",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_wanda_vision = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Wanda",
  last_name: "Vision",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Black Widow & Hawkeye",
  category: "Marvel",
  description: "Dynamic duo! Black Widow and Hawkeye, the master spies and expert marksmen of the Avengers, are ready to spring into action. With their unparalleled skills and unwavering loyalty, Black Widow and Hawkeye will protect your child from any threat. Let Black Widow and Hawkeye be your child's partners in heroism!",
  price: 60,
  user_id: user_black_widow_hawkeye.id
)
character.photo.attach(io: File.open("#{file_path}black widow and hawkeye.webp"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Wanda & Vision",
  category: "Marvel",
  description: "Power couple! Wanda Maximoff and Vision, the Scarlet Witch and the android Avenger, share a love that transcends reality itself. With their incredible abilities and unbreakable bond, Wanda and Vision will inspire your child to believe in the power of love. Let Wanda and Vision be your child's guides to a world of magic and wonder!",
  price: 65,
  user_id: user_wanda_vision.id
)
character.photo.attach(io: File.open("#{file_path}wanda and vision.jpeg"), filename: 'image.jpg')
character.save!

user_spider_man = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Peter",
  last_name: "Parker",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Spider-Man",
  category: "Marvel",
  description: "Friendly neighborhood hero! Peter Parker, also known as Spider-Man, swings into action to protect the innocent and fight crime in New York City. With his amazing agility and web-slinging abilities, Spider-Man will show your child that anyone can be a hero. Let Spider-Man be your child's inspiration to always do what's right!",
  price: 55,
  user_id: user_spider_man.id
)
character.photo.attach(io: File.open("#{file_path}spiderman.png"), filename: 'image.jpg')
character.save!

user_iron_man = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Tony",
  last_name: "Stark",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Iron Man",
  category: "Marvel",
  description: "Genius billionaire playboy philanthropist! Tony Stark, the man behind the iron suit, battles villains and saves the world with his cutting-edge technology and unmatched charisma. With his wit and determination, Iron Man will inspire your child to reach for the stars. Let Iron Man be your child's guide to the future of heroism!",
  price: 60,
  user_id: user_iron_man.id
)
character.photo.attach(io: File.open("#{file_path}IronMan.jpeg"), filename: 'image.jpg')
character.save!

user_captain_america = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Steve",
  last_name: "Rogers",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Captain America",
  category: "Marvel",
  description: "The star-spangled Avenger! Steve Rogers, also known as Captain America, embodies the ideals of patriotism, courage, and justice. With his shield in hand and unwavering resolve, Captain America leads the charge against tyranny and oppression. Let Captain America be your child's symbol of freedom and heroism!",
  price: 65,
  user_id: user_captain_america.id
)
character.photo.attach(io: File.open("#{file_path}captain america.jpeg"), filename: 'image.jpg')
character.save!

user_hulk = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Bruce",
  last_name: "Banner",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Hulk",
  category: "Marvel",
  description: "Hulk smash! Dr. Bruce Banner, cursed with the ability to transform into the raging green monster known as the Hulk, struggles to control his incredible power. With his immense strength and unstoppable fury, Hulk smashes through any obstacle in his path. Let Hulk be your child's powerhouse of courage and strength!",
  price: 70,
  user_id: user_hulk.id
)
character.photo.attach(io: File.open("#{file_path}hulk.avif"), filename: 'image.jpg')
character.save!

user_thor = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Thor",
  last_name: "",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Thor",
  category: "Marvel",
  description: "God of Thunder! Thor, the mighty Asgardian warrior and prince of Asgard, wields his enchanted hammer Mjolnir to defend the realms from cosmic threats. With his valor and nobility, Thor battles evil with the power of lightning at his command. Let Thor be your child's champion of bravery and heroism!",
  price: 70,
  user_id: user_thor.id
)
character.photo.attach(io: File.open("#{file_path}thor.webp"), filename: 'image.jpg')
character.save!

user_wolverine = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Logan",
  last_name: "",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Wolverine",
  category: "Marvel",
  description: "The best there is at what he does! Logan, also known as Wolverine, is a fierce and relentless mutant with an unbreakable adamantium skeleton and razor-sharp claws. With his indomitable spirit and haunted past, Wolverine fights for justice and redemption. Let Wolverine be your child's inspiration to never back down from a challenge!",
  price: 65,
  user_id: user_wolverine.id
)
character.photo.attach(io: File.open("#{file_path}wolverine.jpeg"), filename: 'image.jpg')
character.save!

user_deadpool = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Wade",
  last_name: "Wilson",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Deadpool",
  category: "Marvel",
  description: "Merc with a mouth! Wade Wilson, also known as Deadpool, is a wisecracking and unpredictable anti-hero with a penchant for breaking the fourth wall and causing chaos. With his healing factor and deadly combat skills, Deadpool takes on missions with style and humor. Let Deadpool be your child's guide to the absurd and unpredictable!",
  price: 60,
  user_id: user_deadpool.id
)
character.photo.attach(io: File.open("#{file_path}deadpool.jpeg"), filename: 'image.jpg')
character.save!

user_black_panther = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "T'Challa",
  last_name: "",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Black Panther",
  category: "Marvel",
  description: "King of Wakanda! T'Challa, also known as the Black Panther, protects his nation and the world with his advanced technology and superior combat skills. With his honor and determination, Black Panther fights to defend his people and uphold justice. Let Black Panther be your child's beacon of strength and leadership!",
  price: 70,
  user_id: user_black_panther.id
)
character.photo.attach(io: File.open("#{file_path}black panther.webp"), filename: 'image.jpg')
character.save!

user_doctor_strange = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Stephen",
  last_name: "Strange",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Doctor Strange",
  category: "Marvel",
  description: "Sorcerer Supreme! Dr. Stephen Strange, a former neurosurgeon turned master of the mystic arts, protects the world from supernatural threats. With his magical abilities and mystical artifacts, Doctor Strange delves into realms beyond imagination to safeguard reality itself. Let Doctor Strange be your child's guide to the mysteries of the multiverse!",
  price: 65,
  user_id: user_doctor_strange.id
)
character.photo.attach(io: File.open("#{file_path}dr strange.webp"), filename: 'image.jpg')
character.save!

user_captain_marvel = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Carol",
  last_name: "Danvers",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Captain Marvel",
  category: "Marvel",
  description: "Higher, further, faster! Carol Danvers, also known as Captain Marvel, harnesses the power of the cosmos to defend Earth and beyond. With her superhuman strength and energy manipulation abilities, Captain Marvel soars through the stars to protect the innocent. Let Captain Marvel be your child's inspiration to reach for the stars!",
  price: 70,
  user_id: user_captain_marvel.id
)
character.photo.attach(io: File.open("#{file_path}captain marvel.jpeg"), filename: 'image.jpg')
character.save!

user_ant_man = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Scott",
  last_name: "Lang",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Ant-Man",
  category: "Marvel",
  description: "Tiny hero, big heart! Scott Lang, also known as Ant-Man, shrinks down to miniature size to fight injustice with the help of his incredible technology. With his size-changing abilities and unwavering courage, Ant-Man proves that even the smallest hero can make a big difference. Let Ant-Man be your child's tiny titan of heroism!",
  price: 60,
  user_id: user_ant_man.id
)
character.photo.attach(io: File.open("#{file_path}ant man.webp"), filename: 'image.jpg')
character.save!

user_superman = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Clark",
  last_name: "Kent",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Superman",
  category: "DC",
  description: "The Man of Steel! Clark Kent, also known as Superman, stands as Earth's greatest protector, using his superhuman abilities to uphold truth, justice, and the American way. With his unwavering moral code and selfless heroism, Superman inspires hope in the hearts of millions. Let Superman be your child's beacon of strength and virtue!",
  price: 75,
  user_id: user_superman.id
)
character.photo.attach(io: File.open("#{file_path}superman.webp"), filename: 'image.jpg')
character.save!

user_harley_quinn = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Harley",
  last_name: "Quinn",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Harley Quinn",
  category: "DC",
  description: "Mad love! Dr. Harleen Quinzel, also known as Harley Quinn, is the unpredictable and volatile accomplice of the Joker. With her acrobatic skills and twisted sense of humor, Harley Quinn wreaks havoc on Gotham City while obsessing over her beloved 'Mister J'. Let Harley Quinn be your child's mischievous muse of mayhem!",
  price: 55,
  user_id: user_harley_quinn.id
)
character.photo.attach(io: File.open("#{file_path}harley quinn.webp"), filename: 'image.jpg')
character.save!

user_lex_luthor = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Lex",
  last_name: "Luthor",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Lex Luthor",
  category: "DC",
  description: "Mastermind of Metropolis! Lex Luthor, the brilliant billionaire industrialist, is Superman's greatest adversary, using his intellect and resources to scheme against the Man of Steel. With his cunning and ambition, Lex Luthor seeks to prove that power lies not in strength, but in intellect. Let Lex Luthor be your child's villainous vision of ambition!",
  price: 65,
  user_id: user_lex_luthor.id
)
character.photo.attach(io: File.open("#{file_path}lex luthor.jpeg"), filename: 'image.jpg')
character.save!
user_wonder_woman = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Diana",
  last_name: "Prince",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Wonder Woman",
  category: "DC",
  description: "Amazonian warrior! Diana Prince, also known as Wonder Woman, is a fierce and compassionate warrior princess from the mythical island of Themyscira. With her lasso of truth and indestructible bracelets, Wonder Woman fights for peace and equality in a world torn by conflict. Let Wonder Woman be your child's champion of justice and empowerment!",
  price: 70,
  user_id: user_wonder_woman.id
)
character.photo.attach(io: File.open("#{file_path}wonderwoman.jpeg"), filename: 'image.jpg')
character.save!

user_flash = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Barry",
  last_name: "Allen",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "The Flash",
  category: "DC",
  description: "Scarlet speedster! Barry Allen, also known as the Flash, harnesses the power of the Speed Force to race across dimensions and protect Central City from threats. With his superhuman speed and lightning-fast reflexes, the Flash dashes into action to save the day. Let the Flash be your child's lightning bolt of excitement and heroism!",
  price: 65,
  user_id: user_flash.id
)
character.photo.attach(io: File.open("#{file_path}the flash.jpeg"), filename: 'image.jpg')
character.save!

user_catwoman = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Selina",
  last_name: "Kyle",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Catwoman",
  category: "DC",
  description: "Feline fatale! Selina Kyle, also known as Catwoman, prowls the rooftops of Gotham City as a skilled thief and occasional ally of Batman. With her agility and cunning, Catwoman walks the line between hero and villain, driven by her own code of honor. Let Catwoman be your child's sleek and stealthy symbol of independence!",
  price: 60,
  user_id: user_catwoman.id
)
character.photo.attach(io: File.open("#{file_path}catwoman.png"), filename: 'image.jpg')
character.save!

user_aquaman = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Arthur",
  last_name: "Curry",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Aquaman",
  category: "DC",
  description: "King of Atlantis! Arthur Curry, also known as Aquaman, commands the seas with his trident and rules over the underwater kingdom of Atlantis. With his superhuman strength and ability to communicate with marine life, Aquaman defends the oceans from threats both above and below the surface. Let Aquaman be your child's sovereign of the seas and protector of marine life!",
  price: 65,
  user_id: user_aquaman.id
)
character.photo.attach(io: File.open("#{file_path}aquaman.webp"), filename: 'image.jpg')
character.save!

user_cyborg = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Victor",
  last_name: "Stone",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Cyborg",
  category: "DC",
  description: "Half man, half machine! Victor Stone, also known as Cyborg, is a technologically enhanced hero with cybernetic implants and advanced weaponry. With his superhuman strength and technological prowess, Cyborg fights alongside the Justice League to protect Earth from extraterrestrial threats. Let Cyborg be your child's fusion of humanity and technology!",
  price: 60,
  user_id: user_cyborg.id
)
character.photo.attach(io: File.open("#{file_path}cyborg.webp"), filename: 'image.jpg')
character.save!

user_green_lantern = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Hal",
  last_name: "Jordan",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Green Lantern",
  category: "DC",
  description: "Protector of sector 2814! Hal Jordan, also known as the Green Lantern, wields the power ring of the Green Lantern Corps to create constructs of solid light and defend the universe from cosmic threats. With his willpower and courage, Green Lantern patrols the stars as an intergalactic guardian. Let Green Lantern be your child's beacon of hope across the cosmos!",
  price: 65,
  user_id: user_green_lantern.id
)
character.photo.attach(io: File.open("#{file_path}green lantern.webp"), filename: 'image.jpg')
character.save!

user_green_arrow = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Oliver",
  last_name: "Queen",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Green Arrow",
  category: "DC",
  description: "The Emerald Archer! Oliver Queen, also known as Green Arrow, fights crime in Star City with his mastery of archery and social justice advocacy. With his keen aim and arsenal of trick arrows, Green Arrow takes on corrupt elites and street-level thugs alike. Let Green Arrow be your child's bow-wielding champion of the downtrodden!",
  price: 60,
  user_id: user_green_arrow.id
)
character.photo.attach(io: File.open("#{file_path}green arrow.webp"), filename: 'image.jpg')
character.save!

user_batgirl = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Barbara",
  last_name: "Gordon",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

character = Character.new(
  character_name: "Batgirl",
  category: "DC",
  description: "Gotham's guardian! Barbara Gordon, also known as Batgirl, fights crime alongside Batman as a skilled martial artist and computer hacker. With her intelligence and resourcefulness, Batgirl proves that even without superpowers, one can still make a difference. Let Batgirl be your child's symbol of courage and determination!",
  price: 60,
  user_id: user_batgirl.id
)
character.photo.attach(io: File.open("#{file_path}batgirl.jpeg"), filename: 'image.jpg')
character.save!

user_darth_vader = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Darth",
  last_name: "Vader",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_joker = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "The",
  last_name: "Joker",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_maleficent = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Maleficent",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_sauron = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Sauron",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_cruella = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Cruella",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_ursula = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Ursula",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_hannibal = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Hannibal",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_scar = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Scar",
  last_name: "User",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_palpatine = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Emperor",
  last_name: "Palpatine",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_white_witch = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "White",
  last_name: "Witch",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_freddy_krueger = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Freddy",
  last_name: "Krueger",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)

user_evil_queen = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Evil",
  last_name: "Queen",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address
)


character = Character.new(
  character_name: "Darth Vader",
  category: "Villains",
  description: "Join the dark side with Darth Vader, the fearsome Sith Lord from Star Wars! With his mastery of the Force and imposing presence, Darth Vader will strike fear into the hearts of your child's enemies. Let Darth Vader be your child's guide to the power of the dark side!",
  price: 50,
  user_id: user_darth_vader.id
)
character.photo.attach(io: File.open("#{file_path}darth vader.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "The Joker",
  category: "Villains",
  description: "Why so serious? Meet The Joker, the iconic villain from Batman! With his twisted sense of humor and chaotic nature, The Joker will keep your child on the edge of their seat. Let The Joker be your child's guide to the darker side of Gotham City!",
  price: 55,
  user_id: user_joker.id
)
character.photo.attach(io: File.open("#{file_path}Joker.webp"), filename: 'image.jpg')
character.save!


character = Character.new(
  character_name: "Maleficent",
  category: "Villains",
  description: "Enter the realm of darkness with Maleficent, the wicked fairy from Sleeping Beauty! With her dark magic and sinister plans, Maleficent will enchant your child with her villainous charm. Let Maleficent be your child's guide to the shadows of the enchanted forest!",
  price: 50,
  user_id: user_maleficent.id
)
character.photo.attach(io: File.open("#{file_path}maleficent.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Sauron",
  category: "Villains",
  description: "One ring to rule them all. Sauron, the Dark Lord of Mordor from The Lord of the Rings, seeks dominion over Middle-earth. With his malevolent power and unyielding ambition, Sauron will captivate your child's imagination with tales of epic fantasy and adventure!",
  price: 55,
  user_id: user_sauron.id
)
character.photo.attach(io: File.open("#{file_path}sauron.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Cruella de Vil",
  category: "Villains",
  description: "Fur is her passion, and fashion is her obsession! Meet Cruella de Vil, the dastardly villain from 101 Dalmatians! With her wicked sense of style and villainous schemes, Cruella will leave your child barking mad with excitement. Let Cruella be your child's guide to the glamorous world of villainy!",
  price: 45,
  user_id: user_cruella.id
)
character.photo.attach(io: File.open("#{file_path}cruella de vil.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Ursula",
  category: "Villains",
  description: "Poor unfortunate souls! Ursula, the sea witch from The Little Mermaid will make your child an offer they can't refuse. With her cunning and manipulation, Ursula will entice your child into her underwater lair. Let Ursula be your child's guide to the depths of the ocean!",
  price: 45,
  user_id: user_ursula.id
)
character.photo.attach(io: File.open("#{file_path}ursula.webp"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Hannibal Lecter",
  category: "Villains",
  description: "Good evening, Clarice. Meet Hannibal Lecter, the brilliant yet depraved cannibal from The Silence of the Lambs! With his intellect and savagery, Hannibal will chill your child to the bone. Let Hannibal be your child's guide to the darkest corners of the human psyche!",
  price: 60,
  user_id: user_hannibal.id
)
character.photo.attach(io: File.open("#{file_path}Hannibal.webp"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Scar",
  category: "Villains",
  description: "Long live the king. Scar, the treacherous lion from The Lion King, will stop at nothing to seize the throne of Pride Rock. With his cunning and deceit, Scar will leave your child roaring for more. Let Scar be your child's guide to the circle of betrayal and revenge!",
  price: 50,
  user_id: user_scar.id
)
character.photo.attach(io: File.open("#{file_path}scar.webp"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Emperor Palpatine",
  category: "Villains",
  description: "Execute Order 66. Emperor Palpatine, the Sith Lord from Star Wars, plots to conquer the galaxy with his mastery of the dark side. With his manipulative tactics and thirst for power, Palpatine will lead your child down a path of darkness and intrigue. Let Palpatine be your child's guide to the galaxy far, far away!",
  price: 60,
  user_id: user_palpatine.id
)
character.photo.attach(io: File.open("#{file_path}palpatine.webp"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "White Witch",
  category: "Villains",
  description: "Always winter but never Christmas. The White Witch, the icy tyrant from The Chronicles of Narnia, rules over the land of Narnia with an iron fist. With her cold heart and icy magic, the White Witch will chill your child to the bone. Let the White Witch be your child's guide to the eternal winter of Narnia!",
  price: 55,
  user_id: user_white_witch.id
)
character.photo.attach(io: File.open("#{file_path}white witch.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Freddy Krueger",
  category: "Villains",
  description: "One, two, Freddy's coming for you. Meet Freddy Krueger, the nightmare slasher from A Nightmare on Elm Street! With his razor-sharp claws and twisted mind, Freddy will haunt your child's dreams. Let Freddy be your child's guide to the terror of the night!",
  price: 65,
  user_id: user_freddy_krueger.id
)
character.photo.attach(io: File.open("#{file_path}freddy krueger.jpeg"), filename: 'image.jpg')
character.save!

character = Character.new(
  character_name: "Evil Queen",
  category: "Villains",
  description: "Mirror, mirror, on the wall. The Evil Queen, the wicked stepmother from Snow White, will stop at nothing to be the fairest in the land. With her vanity and jealousy, the Evil Queen will cast a shadow over your child's dreams. Let the Evil Queen be your child's guide to the dark side of fairy tales!",
  price: 50,
  user_id: user_evil_queen.id
)
character.photo.attach(io: File.open("#{file_path}the evil queen.jpeg"), filename: 'image.jpg')
character.save!

john_wick_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "John",
  last_name: "Wick",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: "12 Continental Road, New York City"
)
character = Character.new(
  character_name: "John Wick",
  category: "Action",
  description: "John Wick is a retired hitman seeking vengeance for the killing of his beloved dog. Trained in martial arts and armed with a deadly set of skills, he's known for his relentless pursuit of justice.",
  price: 30,
  user_id: john_wick_user.id
)
character.photo.attach(io: File.open("#{file_path}john wick.jpeg"), filename: 'image.jpg')
character.save!


lara_croft_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Lara",
  last_name: "Croft",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)
character = Character.new(
  character_name: "Lara Croft",
  category: "Action",
  description: "Lara Croft is an adventurous archaeologist known for her bravery and resourcefulness. With a knack for solving puzzles and a talent for combat, she's always ready for action-packed missions.",
  price: 35,
  user_id: lara_croft_user.id
)
character.photo.attach(io: File.open("#{file_path}lara croft.jpeg"), filename: 'image.jpg')
character.save!

james_bond_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "James",
  last_name: "Bond",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)
character = Character.new(
  character_name: "James Bond",
  category: "Action",
  description: "James Bond, also known as Agent 007, is a suave and skilled secret agent. With a license to kill and a taste for adventure, he's always ready to save the world from the clutches of evil masterminds.",
  price: 40,
  user_id: james_bond_user.id
)
character.photo.attach(io: File.open("#{file_path}James Bond.webp"), filename: 'image.jpg')
character.save!

sarah_connor_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Sarah",
  last_name: "Connor",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)
character = Character.new(
  character_name: "Sarah Connor",
  category: "Action",
  description: "Sarah Connor is a resilient survivor and skilled fighter, known for her role in the battle against Skynet and the Terminators. With a determination to protect her son and prevent a future apocalypse, she's a force to be reckoned with.",
  price: 35,
  user_id: sarah_connor_user.id
)
character.photo.attach(io: File.open("#{file_path}sarah connor.webp"), filename: 'image.jpg')
character.save!

john_mcclane_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "John",
  last_name: "McClane",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)
character = Character.new(
  character_name: "John McClane",
  category: "Action",
  description: "John McClane is a tough and resourceful NYPD detective known for his heroic actions during terrorist incidents. With a never-say-die attitude and a penchant for improvisation, he's always ready to take on the bad guys.",
  price: 35,
  user_id: john_mcclane_user.id
)
character.photo.attach(io: File.open("#{file_path}john mcclane.jpeg"), filename: 'image.jpg')
character.save!

ellen_ripley_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Ellen",
  last_name: "Ripley",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)
character = Character.new(
  character_name: "Ellen Ripley",
  category: "Action",
  description: "Ellen Ripley is a resilient survivor and skilled fighter, known for her battles against the deadly Xenomorphs. With courage and determination, she faces terrifying odds to protect herself and those around her.",
  price: 35,
  user_id: ellen_ripley_user.id
)
character.photo.attach(io: File.open("#{file_path}ellen ripley.jpeg"), filename: 'image.jpg')
character.save!


neo_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Neo",
  last_name: "Anderson",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)
character = Character.new(
  character_name: "Neo",
  category: "Action",
  description: "Neo is the chosen one destined to free humanity from the Matrix. With extraordinary powers and a fearless spirit, he leads the fight against the machines and inspires others to break free from the illusion.",
  price: 40,
  user_id: neo_user.id
)
character.photo.attach(io: File.open("#{file_path}neo matrix.jpeg"), filename: 'image.jpg')
character.save!

indiana_jones_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Indiana",
  last_name: "Jones",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Indiana Jones",
  category: "Action",
  description: "Indiana Jones is an adventurous archaeologist and professor known for his daring exploits and quest for ancient artifacts. With his iconic fedora and trusty whip, he braves danger in search of hidden treasures.",
  price: 35,
  user_id: indiana_jones_user.id
)
character.photo.attach(io: File.open("#{file_path}indiana jones.jpeg"), filename: 'image.jpg')
character.save!

mad_max_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Max",
  last_name: "Rockatansky",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Mad Max",
  category: "Action",
  description: "Mad Max is a lone warrior navigating a post-apocalyptic wasteland, seeking vengeance against those who wronged him. With his iconic Interceptor and survival skills, he's a symbol of hope in a desolate world.",
  price: 30,
  user_id: mad_max_user.id
)
character.photo.attach(io: File.open("#{file_path}madmax.jpeg"), filename: 'image.jpg')
character.save!

harry_tasker_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Harry",
  last_name: "Tasker",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Harry Tasker",
  category: "Action",
  description: "Harry Tasker is a skilled secret agent leading a double life as a family man. With his wit and charm, he navigates dangerous missions while trying to maintain his cover and protect his loved ones.",
  price: 35,
  user_id: harry_tasker_user.id
)
character.photo.attach(io: File.open("#{file_path}harry tasker.jpeg"), filename: 'image.jpg')
character.save!

ethan_hunt_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Ethan",
  last_name: "Hunt",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Ethan Hunt",
  category: "Action",
  description: "Ethan Hunt is a skilled operative and leader of the IMF team, known for his daring stunts and ability to outsmart his enemies. With his team by his side, he takes on impossible missions to save the world from global threats.",
  price: 40,
  user_id: ethan_hunt_user.id
)
character.photo.attach(io: File.open("#{file_path}ethan hunt.webp"), filename: 'image.jpg')
character.save!

sarah_walker_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Sarah",
  last_name: "Walker",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Sarah Walker",
  category: "Action",
  description: "Sarah Walker is a skilled CIA agent with a mysterious past, known for her combat skills and expertise in espionage. With her intelligence and determination, she's an invaluable asset in any mission.",
  price: 35,
  user_id: sarah_walker_user.id
)
character.photo.attach(io: File.open("#{file_path}sarah walker.jpeg"), filename: 'image.jpg')
character.save!

leon_kennedy_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Leon",
  last_name: "Kennedy",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Leon S. Kennedy",
  category: "Action",
  description: "Leon S. Kennedy is a skilled government agent and former police officer, known for his role in combating bioterrorism threats. With his courage and determination, he faces the horrors unleashed by the Umbrella Corporation.",
  price: 35,
  user_id: leon_kennedy_user.id
)
character.photo.attach(io: File.open("#{file_path}leon s kennedy.jpeg"), filename: 'image.jpg')
character.save!

dominic_toretto_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Dominic",
  last_name: "Toretto",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Dominic Toretto",
  category: "Action",
  description: "Dominic Toretto is a skilled street racer and leader of the Fast & Furious crew, known for his loyalty to family and fearless driving skills. With his love for adrenaline-fueled adventures, he's always ready to take on the next challenge.",
  price: 40,
  user_id: dominic_toretto_user.id
)
character.photo.attach(io: File.open("#{file_path}dominic toretto.webp"), filename: 'image.jpg')
character.save!

furiosa_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Furiosa",
  last_name: "",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Furiosa",
  category: "Action",
  description: "Furiosa is a courageous warrior and skilled driver, leading a daring escape from a tyrannical warlord in a post-apocalyptic wasteland. With her determination and combat prowess, she fights for freedom and redemption.",
  price: 35,
  user_id: furiosa_user.id
)
character.photo.attach(io: File.open("#{file_path}Furiosa.webp"), filename: 'image.jpg')
character.save!

john_rambo_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "John",
  last_name: "Rambo",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "John Rambo",
  category: "Action",
  description: "John Rambo is a skilled and resourceful Vietnam War veteran, known for his survival skills and combat prowess. With a troubled past and a sense of justice, he fights against injustice and oppression wherever he goes.",
  price: 35,
  user_id: john_rambo_user.id
)
character.photo.attach(io: File.open("#{file_path}rambo.jpeg"), filename: 'image.jpg')
character.save!

ellen_brody_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Ellen",
  last_name: "Brody",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Ellen Brody",
  category: "Action",
  description: "Ellen Brody is a brave and resourceful mother, known for her role in protecting her family from the terror of a great white shark. With her determination and courage, she faces the dangers of the ocean to ensure the safety of her loved ones.",
  price: 35,
  user_id: ellen_brody_user.id
)
character.photo.attach(io: File.open("#{file_path}ellen brody.jpeg"), filename: 'image.jpg')
character.save!

riggs_and_murtaugh_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Riggs",
  last_name: "and Murtaugh",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Riggs and Murtaugh",
  category: "Action",
  description: "Riggs and Murtaugh are a dynamic duo of LAPD detectives, known for their unconventional methods and comedic banter. With their contrasting personalities and strong partnership, they take on dangerous criminals and solve complex cases.",
  price: 40,
  user_id: riggs_and_murtaugh_user.id
)
character.photo.attach(io: File.open("#{file_path}riggs and murtaugh.jpeg"), filename: 'image.jpg')
character.save!

harry_potter_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Harry",
  last_name: "Potter",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Harry Potter",
  category: "Books",
  description: "Harry Potter is a young wizard known for his bravery and determination in the face of adversity. With his loyal friends by his side, he faces dark wizards and magical creatures to save the wizarding world from evil.",
  price: 30,
  user_id: harry_potter_user.id
)
character.photo.attach(io: File.open("#{file_path}harry potter.avif"), filename: 'image.jpg')
character.save!

hermione_granger_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Hermione",
  last_name: "Granger",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Hermione Granger",
  category: "Books",
  description: "Hermione Granger is a brilliant and resourceful witch known for her intelligence and quick thinking. With her extensive knowledge of magic and unwavering loyalty to her friends, she helps Harry Potter in his quest to defeat Voldemort.",
  price: 30,
  user_id: hermione_granger_user.id
)
character.photo.attach(io: File.open("#{file_path}hermione granger.webp"), filename: 'image.jpg')
character.save!

ron_weasley_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Ron",
  last_name: "Weasley",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Ron Weasley",
  category: "Books",
  description: "Ron Weasley is a loyal and brave wizard, known for his sense of humor and unwavering friendship. With his trusty wand and quick wit, he stands by Harry Potter's side through thick and thin.",
  price: 30,
  user_id: ron_weasley_user.id
)
character.photo.attach(io: File.open("#{file_path}ron weasley.jpeg"), filename: 'image.jpg')
character.save!

frodo_baggins_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Frodo",
  last_name: "Baggins",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Frodo Baggins",
  category: "Books",
  description: "Frodo Baggins is a hobbit from the Shire, known for his courage and resilience in the face of overwhelming odds. With the help of his friends, he embarks on a perilous journey to destroy the One Ring and save Middle-earth from darkness.",
  price: 35,
  user_id: frodo_baggins_user.id
)
character.photo.attach(io: File.open("#{file_path}frodo baggins.webp"), filename: 'image.jpg')
character.save!

gandalf_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Gandalf",
  last_name: "",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Gandalf",
  category: "Books",
  description: "Gandalf is a wise and powerful wizard, known for his role in shaping the fate of Middle-earth. With his magic staff and deep knowledge of ancient lore, he guides Frodo Baggins and the Fellowship of the Ring on their quest to defeat Sauron.",
  price: 40,
  user_id: gandalf_user.id
)
character.photo.attach(io: File.open("#{file_path}gandalf.webp"), filename: 'image.jpg')
character.save!

bilbo_baggins_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Bilbo",
  last_name: "Baggins",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Bilbo Baggins",
  category: "Books",
  description: "Bilbo Baggins is a hobbit who embarks on a unexpected adventure, discovering courage and heroism within himself. With the help of Gandalf and the Dwarves, he faces dragons and trolls to reclaim the Lonely Mountain.",
  price: 35,
  user_id: bilbo_baggins_user.id
)
character.photo.attach(io: File.open("#{file_path}bilbo baggins.jpeg"), filename: 'image.jpg')
character.save!

katniss_everdeen_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Katniss",
  last_name: "Everdeen",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Katniss Everdeen",
  category: "Books",
  description: "Katniss Everdeen is a brave and resourceful archer, known for her role in leading a rebellion against the oppressive Capitol. With her bow and arrow, she becomes a symbol of hope for the people of Panem.",
  price: 35,
  user_id: katniss_everdeen_user.id
)
character.photo.attach(io: File.open("#{file_path}katniss everdeen.jpeg"), filename: 'image.jpg')
character.save!

sherlock_holmes_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Sherlock",
  last_name: "Holmes",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Sherlock Holmes",
  category: "Books",
  description: "Sherlock Holmes is a brilliant detective with a keen eye for detail and deduction. With his trusty companion Dr. John Watson, he solves perplexing mysteries and outwits cunning criminals in Victorian London.",
  price: 40,
  user_id: sherlock_holmes_user.id
)
character.photo.attach(io: File.open("#{file_path}sherlock holmes.jpeg"), filename: 'image.jpg')
character.save!

dr_john_watson_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "John",
  last_name: "Watson",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Dr. John Watson",
  category: "Books",
  description: "Dr. John Watson is a loyal and dependable companion to Sherlock Holmes, known for his practicality and bravery. With his medical expertise and keen observations, he assists Holmes in solving complex cases and apprehending criminals.",
  price: 35,
  user_id: dr_john_watson_user.id
)
character.photo.attach(io: File.open("#{file_path}dr john watson.jpeg"), filename: 'image.jpg')
character.save!

atticus_finch_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Atticus",
  last_name: "Finch",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Atticus Finch",
  category: "Books",
  description: "Atticus Finch is a principled and compassionate lawyer, known for his integrity and sense of justice. As a single father to Scout and Jem, he imparts valuable lessons about morality and tolerance in the racially-charged setting of 1930s Alabama.",
  price: 45,
  user_id: atticus_finch_user.id
)
character.photo.attach(io: File.open("#{file_path}atticus finch.jpeg"), filename: 'image.jpg')
character.save!

scout_finch_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Scout",
  last_name: "Finch",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Scout Finch",
  category: "Books",
  description: "Scout Finch is a curious and adventurous young girl, known for her innocence and inquisitiveness. Growing up in the racially-divided town of Maycomb, Alabama, she learns valuable lessons about empathy and compassion from her father Atticus.",
  price: 30,
  user_id: scout_finch_user.id
)
character.photo.attach(io: File.open("#{file_path}scout finch.webp"), filename: 'image.jpg')
character.save!

holden_caulfield_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Holden",
  last_name: "Caulfield",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Holden Caulfield",
  category: "Books",
  description: "Holden Caulfield is a disillusioned teenager, known for his cynical outlook on life and disdain for societal norms. As he navigates through the streets of New York City, he grapples with feelings of alienation and existential angst.",
  price: 35,
  user_id: holden_caulfield_user.id
)
character.photo.attach(io: File.open("#{file_path}holden caulfield.png"), filename: 'image.jpg')
character.save!

elizabeth_bennet_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Elizabeth",
  last_name: "Bennet",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Elizabeth Bennet",
  category: "Books",
  description: "Elizabeth Bennet is a spirited and independent young woman, known for her wit and intelligence. As she navigates the social intricacies of 19th-century England, she challenges societal expectations and seeks a partner who respects her for who she is.",
  price: 30,
  user_id: elizabeth_bennet_user.id
)
character.photo.attach(io: File.open("#{file_path}elizabeth bennet.jpeg"), filename: 'image.jpg')
character.save!

jay_gatsby_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Jay",
  last_name: "Gatsby",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Jay Gatsby",
  category: "Books",
  description: "Jay Gatsby is a mysterious and enigmatic figure, known for his lavish parties and unrequited love for Daisy Buchanan. Despite his immense wealth, he remains fixated on his past and the pursuit of the American Dream.",
  price: 40,
  user_id: jay_gatsby_user.id
)
character.photo.attach(io: File.open("#{file_path}jay gatsby.webp"), filename: 'image.jpg')
character.save!

huckleberry_finn_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Huckleberry",
  last_name: "Finn",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Huckleberry Finn",
  category: "Books",
  description: "Huckleberry Finn is a free-spirited and adventurous young boy, known for his escapades along the Mississippi River. With his friend Jim, a runaway slave, he embarks on a journey of self-discovery and moral growth.",
  price: 35,
  user_id: huckleberry_finn_user.id
)
character.photo.attach(io: File.open("#{file_path}huckleberry finn.jpeg"), filename: 'image.jpg')
character.save!

ebenezer_scrooge_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Ebenezer",
  last_name: "Scrooge",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Ebenezer Scrooge",
  category: "Books",
  description: "Ebenezer Scrooge is a miserly and cold-hearted old man, known for his disdain for Christmas and the joy it brings. However, after being visited by the ghosts of Christmas Past, Present, and Yet to Come, he undergoes a transformation and learns the true meaning of compassion and generosity.",
  price: 45,
  user_id: ebenezer_scrooge_user.id
)
character.photo.attach(io: File.open("#{file_path}ebenezer scrooge.webp"), filename: 'image.jpg')
character.save!

mr_darcy_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Mr.",
  last_name: "Darcy",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Mr. Darcy",
  category: "Books",
  description: "Mr. Darcy is a wealthy and proud gentleman, known for his reserved demeanor and initially unfavorable impression on Elizabeth Bennet. Despite his aloofness, he possesses a strong sense of honor and integrity, which eventually wins over Elizabeth's heart.",
  price: 50,
  user_id: mr_darcy_user.id
)
character.photo.attach(io: File.open("#{file_path}mr darcy.webp"), filename: 'image.jpg')
character.save!

scarlett_ohara_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Scarlett",
  last_name: "O'Hara",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Scarlett O'Hara",
  category: "Books",
  description: "Scarlett O'Hara is a headstrong and resilient Southern belle, known for her determination and resourcefulness. Throughout the tumultuous events of the Civil War and Reconstruction era, she fiercely fights to protect her family and secure her own survival.",
  price: 45,
  user_id: scarlett_ohara_user.id
)
character.photo.attach(io: File.open("#{file_path}scarlett o'hara.jpeg"), filename: 'image.jpg')
character.save!

don_quixote_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Don",
  last_name: "Quixote",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Don Quixote",
  category: "Books",
  description: "Don Quixote is a delusional yet noble-hearted knight-errant, known for his absurd adventures and chivalric ideals. Believing himself to be a valiant hero, he sets out on a quest to revive chivalry and uphold justice, accompanied by his loyal squire Sancho Panza.",
  price: 35,
  user_id: don_quixote_user.id
)
character.photo.attach(io: File.open("#{file_path}don quixote.jpeg"), filename: 'image.jpg')
character.save!

jane_eyre_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Jane",
  last_name: "Eyre",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Jane Eyre",
  category: "Books",
  description: "Jane Eyre is a strong-willed and independent woman, known for her resilience and moral integrity. Despite facing adversity and hardship, she remains true to herself and stands up for her beliefs, ultimately finding love and fulfillment.",
  price: 40,
  user_id: jane_eyre_user.id
)
character.photo.attach(io: File.open("#{file_path}jane eyre.png"), filename: 'image.jpg')
character.save!

mr_rochester_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Mr.",
  last_name: "Rochester",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Mr. Rochester",
  category: "Books",
  description: "Mr. Rochester is a brooding and enigmatic gentleman, known for his complex personality and dark secrets. Despite his flaws, he possesses a passionate and sincere love for Jane Eyre, which ultimately leads to their reconciliation and happiness.",
  price: 45,
  user_id: mr_rochester_user.id
)
character.photo.attach(io: File.open("#{file_path}mr rochester.jpeg"), filename: 'image.jpg')
character.save!

tom_sawyer_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Tom",
  last_name: "Sawyer",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)

character = Character.new(
  character_name: "Tom Sawyer",
  category: "Books",
  description: "Tom Sawyer is an adventurous and mischievous young boy, known for his wild imagination and penchant for trouble. With his best friend Huckleberry Finn, he embarks on a series of escapades that capture the spirit of childhood.",
  price: 35,
  user_id: tom_sawyer_user.id
)
character.photo.attach(io: File.open("#{file_path}tom sawyer.webp"), filename: 'image.jpg')
character.save!

jo_march_user = User.create!(
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  first_name: "Jo",
  last_name: "March",
  phone_nr: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state
)
character = Character.new(
  character_name: "Jo March",
  category: "Books",
  description: "Jo March is a spirited and ambitious young woman, known for her strong will and literary aspirations. As she navigates the challenges of womanhood and pursues her dreams, she inspires readers with her resilience and determination.",
  price: 40,
  user_id: jo_march_user.id
)
character.photo.attach(io: File.open("#{file_path}jo march.jpeg"), filename: 'image.jpg')
character.save!

puts 'Finished'
