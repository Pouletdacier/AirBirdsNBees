puts "Cleaning database..."
Booking.destroy_all
Bird.destroy_all
User.destroy_all

puts "Creating users..."

avatar_image = {
  "avatar_1" => "https://helium-editions.fr/je-suis-un-oiseau-de-la-ville/images/CORNEILLE-NOIRE.png",
  "avatar_2" => "https://helium-editions.fr/je-suis-un-oiseau-de-la-ville/images/FAUCON-CRECERELLE.png",
  "avatar_3" => "https://helium-editions.fr/je-suis-un-oiseau-de-la-ville/images/CANARD-MANDARIN.png",
  "avatar_4" => "https://helium-editions.fr/je-suis-un-oiseau-de-la-ville/images/BERNACHE-NONNETTE.png",
  "avatar_5" => "https://helium-editions.fr/je-suis-un-oiseau-de-la-ville/images/TROGLODYTE-MIGNON.png",
  "avatar_6" => "https://helium-editions.fr/je-suis-un-oiseau-de-la-ville/images/ROITELET-TRIPLE-BANDEAU.png",
  "avatar_7" => "https://helium-editions.fr/je-suis-un-oiseau-de-la-ville/images/PERRUCHE-A-COLLIER.png",
  "avatar_8" => "https://helium-editions.fr/je-suis-un-oiseau-de-la-ville/images/GRIMPEREAU-DES-JARDINS.png"
}

alain = User.create!(
  email:    "alain.verse@gmail.com",
  password: "123456",
  username: "Alain Verse",
  avatar_url: avatar_image["avatar_1"]
)

anna = User.create!(
  email:    "anna.tomie@gmail.com",
  password: "123456",
  username: "Anna Tomie",
  avatar_url: avatar_image["avatar_2"]
)

jacques = User.create!(
  email:    "jacques.couche@gmail.com",
  password: "123456",
  username: "Jaques Couche",
  avatar_url:"avatar_3"
)

thea = User.create!(
  email:    "théa.louest@gmail.com",
  password: "123456",
  username: "Théa Louest",
  avatar_url:"avatar_4"
)

laurie = User.create!(
  email:    "laurie.fice@gmail.com",
  password: "123456",
  username: "Laurie Fice",
  avatar_url:"avatar_5"
)

marie = User.create!(
  email:    "marie.rouana@gmail.com",
  password: "123456",
  username: "Marie Rouana",
  avatar_url:"avatar_6"
)

oussama = User.create!(
  email:    "oussama.palairtréclaire@gmail.com",
  password: "123456",
  username: "Oussama Palairtréclaire",
  avatar_url:"avatar_7"
)

thierry = User.create!(
  email:    "thierry.golo@gmail.com",
  password: "123456",
  username: "Thierry Golo",
  avatar_url: "avatar_8"
)

puts "Adding Birds..."
dina = Bird.create!(
  birdlord: oussama,
  name: 'Dina',
  details: 'Scary looking but nice',
  species: 'Black Vulture',
  price_per_day: 200
)

file = File.open(Rails.root.join("db/seeds/birds/black_vulture_dina.jpg"))
dina.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

helmut = Bird.create!(
  birdlord: laurie,
  name: 'Helmut',
  details: 'Judges you but won\'t tell you',
  species: 'Eurasian Jay',
  price_per_day: 100
)

file = File.open(Rails.root.join("db/seeds/birds/eurasian_jay_helmut.jpg"))
helmut.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

ronnie = Bird.create!(
  birdlord: laurie,
  name: 'Ronnie',
  details: 'A sweetheart at heart. Eats babies.',
  species: 'Eurasian Wren',
  price_per_day: 100
)

file = File.open(Rails.root.join("db/seeds/birds/eurasian_wren_ronnie.jpg"))
ronnie.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

tadeusz = Bird.create!(
  birdlord: oussama,
  name: 'Tadeusz',
  details: 'Fabulous.',
  species: 'European Goldfinch',
  price_per_day: 500
)

file = File.open(Rails.root.join("db/seeds/birds/european_goldfinch_tadeusz.jpg"))
tadeusz.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

livia = Bird.create!(
  birdlord: thierry,
  name: 'Livia',
  details: "Definetely won't hurt your children.",
  species: 'Harpy Eagle',
  price_per_day: 100
)

file = File.open(Rails.root.join("db/seeds/birds/harpyeagle_livia.jpg"))
livia.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

mephisto = Bird.create!(
  birdlord: thierry,
  name: 'Mephisto',
  details: 'Will cuddle you but won\'t like you',
  species: 'Kagu',
  price_per_day: 100
)

file = File.open(Rails.root.join("db/seeds/birds/kagu_mephisto.jpg"))
mephisto.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

ivan = Bird.create!(
  birdlord: laurie,
  name: 'Ivan',
  details: 'Ivan is the best. If you hurt him we will find you and we will hurt you.',
  species: 'Kookabura',
  price_per_day: 200
)

file = File.open(Rails.root.join("db/seeds/birds/kookabura_ivan.jpg"))
ivan.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

bobby = Bird.create!(
  birdlord: oussama,
  name: 'Bobby',
  details: 'Bobby is chill. You should be too. Why aren\'t you?',
  species: 'Nightjar',
  price_per_day: 100
)

file = File.open(Rails.root.join("db/seeds/birds/nightjar_bobby.jpg"))
bobby.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

moloch = Bird.create!(
  birdlord: laurie,
  name: 'Moloch',
  details: 'Moloch is the sweetest, but her entire family has been found dead in mysterious circumstances.',
  species: 'Pearl Spotted Owlet',
  price_per_day: 100
)

file = File.open(Rails.root.join("db/seeds/birds/pearl_spotted_owlet_moloch.jpg"))
moloch.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

bernard = Bird.create!(
  birdlord: oussama,
  name: 'Bernard',
  details: 'Life of the party! Fun times!!!',
  species: 'Pukeko',
  price_per_day: 200
)

file = File.open(Rails.root.join("db/seeds/birds/pukeko_bernard.jpg"))
bernard.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

george_the_third = Bird.create!(
  birdlord: laurie,
  name: 'George The Third',
  details: 'Do not look in his direction if you don\'t have treats on you.',
  species: 'Pukeko',
  price_per_day: 100
)

file = File.open(Rails.root.join("db/seeds/birds/quail_george_the_third.jpg"))
george_the_third.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

attila = Bird.create!(
  birdlord: oussama,
  name: 'Attila',
  details: 'A cutie but a meanie',
  species: 'Shima Enaga',
  price_per_day: 100
)

file = File.open(Rails.root.join("db/seeds/birds/shima_enaga_attila.jpg"))
attila.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

anastasia = Bird.create!(
  birdlord: thierry,
  name: 'Anastasia',
  details: 'The queen of being the most beautiful and the most annoying.',
  species: 'Spoonbill',
  price_per_day: 200
)

file = File.open(Rails.root.join("db/seeds/birds/spoonbill_anastasia.jpg"))
anastasia.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

puts "Creating bookings..."
Booking.create!(
  bird: attila,
  renter: anna,
  beginning_date: "2026-05-01",
  end_date: "2026-05-03",
  price_total: 300,
  status: "pending"
)

Booking.create!(
  bird: tadeusz,
  renter: alain,
  beginning_date: "2026-06-04",
  end_date: "2026-06-05",
  price_total: 1000,
  status: "pending"
)

Booking.create!(
  bird: bernard,
  renter: jacques,
  beginning_date: "2026-05-20",
  end_date: "2026-05-23",
  price_total: 600,
  status: "accepted"
)

puts "Finished!"
