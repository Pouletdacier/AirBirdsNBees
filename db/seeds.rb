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
  email: "alain.verse@gmail.com",
  password: "123456",
  username: "Alain Verse",
  avatar_url: avatar_image["avatar_1"]
)

anna = User.create!(
  email: "anna.tomie@gmail.com",
  password: "123456",
  username: "Anna Tomie",
  avatar_url: avatar_image["avatar_2"]
)

jacques = User.create!(
  email: "jacques.couche@gmail.com",
  password: "123456",
  username: "Jaques Couche",
  avatar_url: avatar_image["avatar_3"]
)

thea = User.create!(
  email: "théa.louest@gmail.com",
  password: "123456",
  username: "Théa Louest",
  avatar_url: avatar_image["avatar_4"]
)

laurie = User.create!(
  email: "laurie.fice@gmail.com",
  password: "123456",
  username: "Laurie Fice",
  avatar_url: avatar_image["avatar_5"]
)

marie = User.create!(
  email: "marie.rouana@gmail.com",
  password: "123456",
  username: "Marie Rouana",
  avatar_url: avatar_image["avatar_6"]
)

oussama = User.create!(
  email: "oussama.palairtréclaire@gmail.com",
  password: "123456",
  username: "Oussama Palairtréclaire",
  avatar_url: avatar_image["avatar_7"]
)

thierry = User.create!(
  email: "thierry.golo@gmail.com",
  password: "123456",
  username: "Thierry Golo",
  avatar_url: avatar_image["avatar_8"]
)

puts "Adding Birds..."
dina = Bird.create!(
  birdlord: oussama,
  name: 'Dina',
  details: 'Scary looking but nice',
  species: 'Black Vulture',
  price_per_day: 300,
  diet: 'Carrion eater',
  height_and_weight: "Around 67 cm, 20.0 kg",
  favorite_snack: 'Decaying meat'
)

file = File.open(Rails.root.join("db/seeds/birds/black_vulture_dina.jpg"))
dina.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

helmut = Bird.create!(
  birdlord: laurie,
  name: 'Helmut',
  details: 'Judges you but won\'t tell you',
  species: 'Eurasian Jay',
  price_per_day: 150,
  diet: 'Omnivore',
  height_and_weight: "Around 35 cm, 90 g",
  favorite_snack: 'Acorns and insects'
)

file = File.open(Rails.root.join("db/seeds/birds/eurasian_jay_helmut.jpg"))
helmut.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

ronnie = Bird.create!(
  birdlord: laurie,
  name: 'Ronnie',
  details: 'A sweetheart at heart. Eats babies.',
  species: 'Eurasian Wren',
  price_per_day: 120,
  diet: 'Insects, spiders, small creatures',
  height_and_weight: "Around 13 cm, 10 g",
  favorite_snack: 'Tiny insects and larvae'
)

file = File.open(Rails.root.join("db/seeds/birds/eurasian_wren_ronnie.jpg"))
ronnie.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

tadeusz = Bird.create!(
  birdlord: oussama,
  name: 'Tadeusz',
  details: 'Fabulous.',
  species: 'European Goldfinch',
  price_per_day: 600,
  diet: 'Seeds, insects',
  height_and_weight: "Around 14 cm, 15 g",
  favorite_snack: 'Small seeds and insects'
)

file = File.open(Rails.root.join("db/seeds/birds/european_goldfinch_tadeusz.jpg"))
tadeusz.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

livia = Bird.create!(
  birdlord: thierry,
  name: 'Livia',
  details: "Definitely won't hurt your children.",
  species: 'Harpy Eagle',
  price_per_day: 150,
  diet: 'Carnivore',
  height_and_weight: "Around 96 cm, 6.4 kg",
  favorite_snack: 'Small mammals and birds'
)

file = File.open(Rails.root.join("db/seeds/birds/harpyeagle_livia.jpg"))
livia.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

mephisto = Bird.create!(
  birdlord: thierry,
  name: 'Mephisto',
  details: 'Will cuddle you but won\'t like you',
  species: 'Kagu',
  price_per_day: 120,
  diet: 'Carnivore',
  height_and_weight: "Around 55 cm, 0.68 kg",
  favorite_snack: 'Small animals and insects'
)

file = File.open(Rails.root.join("db/seeds/birds/kagu_mephisto.jpg"))
mephisto.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

ivan = Bird.create!(
  birdlord: laurie,
  name: 'Ivan',
  details: 'Ivan is the best. If you hurt him we will find you and we will hurt you.',
  species: 'Kookaburra',
  price_per_day: 200,
  diet: 'Carnivore',
  height_and_weight: "Around 28 cm, 0.33 kg",
  favorite_snack: 'Small animals, insects, and snakes'
)

file = File.open(Rails.root.join("db/seeds/birds/kookabura_ivan.jpg"))
ivan.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

bobby = Bird.create!(
  birdlord: oussama,
  name: 'Bobby',
  details: 'Bobby is chill. You should be too. Why aren\'t you?',
  species: 'Nightjar',
  price_per_day: 150,
  diet: 'Insects, beetles, moths',
  height_and_weight: "Around 25 cm, 100 g",
  favorite_snack: 'Night-flying insects'
)

file = File.open(Rails.root.join("db/seeds/birds/nightjar_bobby.jpg"))
bobby.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

moloch = Bird.create!(
  birdlord: laurie,
  name: 'Moloch',
  details: 'Moloch is the sweetest, but her entire family has been found dead in mysterious circumstances.',
  species: 'Pearl Spotted Owlet',
  price_per_day: 120,
  diet: 'Insects, small rodents',
  height_and_weight: "Around 19 cm, 0.14 kg",
  favorite_snack: 'Mice and insects'
)

file = File.open(Rails.root.join("db/seeds/birds/pearl_spotted_owlet_moloch.jpg"))
moloch.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

bernard = Bird.create!(
  birdlord: oussama,
  name: 'Bernard',
  details: 'Life of the party! Fun times!!!',
  species: 'Pukeko',
  price_per_day: 300,
  diet: 'Omnivore',
  height_and_weight: "Around 63 cm, 1200 g",
  favorite_snack: 'Insects, seeds, and small animals'
)

file = File.open(Rails.root.join("db/seeds/birds/pukeko_bernard.jpg"))
bernard.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

george_the_third = Bird.create!(
  birdlord: laurie,
  name: 'George The Third',
  details: 'Do not look in his direction if you don\'t have treats on you.',
  species: 'Quail',
  price_per_day: 150,
  diet: 'Seeds, insects, plants',
  height_and_weight: "Around 20 cm, 150 g",
  favorite_snack: 'Seeds and insects'
)

file = File.open(Rails.root.join("db/seeds/birds/quail_george_the_third.jpg"))
george_the_third.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

attila = Bird.create!(
  birdlord: oussama,
  name: 'Attila',
  details: 'A cutie but a meanie',
  species: 'Shima Enaga',
  price_per_day: 120,
  diet: 'Insects, berries',
  height_and_weight: "Around 15 cm, 12 g",
  favorite_snack: 'Berries and small insects'
)

file = File.open(Rails.root.join("db/seeds/birds/shima_enaga_attila.jpg"))
attila.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

anastasia = Bird.create!(
  birdlord: thierry,
  name: 'Anastasia',
  details: 'The queen of being the most beautiful and the most annoying.',
  species: 'Spoonbill',
  price_per_day: 300,
  diet: 'Mainly fish, crustaceans',
  height_and_weight: "Around 80 cm, 2.7 kg",
  favorite_snack: 'Fish and aquatic invertebrates'
)

file = File.open(Rails.root.join("db/seeds/birds/spoonbill_anastasia.jpg"))
anastasia.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

puts "Creating bookings..."

Booking.create!(
  bird: dina,
  renter: alain,
  beginning_date: "2026-08-10",
  end_date: "2026-08-11",
  price_total: 300,
  status: "pending"
)

Booking.create!(
  bird: helmut,
  renter: anna,
  beginning_date: "2026-08-15",
  end_date: "2026-08-17",
  price_total: 300,
  status: "pending"
)

Booking.create!(
  bird: ronnie,
  renter: jacques,
  beginning_date: "2026-09-05",
  end_date: "2026-09-08",
  price_total: 360,
  status: "accepted"
)

Booking.create!(
  bird: tadeusz,
  renter: thea,
  beginning_date: "2026-08-22",
  end_date: "2026-08-25",
  price_total: 2400,
  status: "pending"
)

Booking.create!(
  bird: livia,
  renter: marie,
  beginning_date: "2026-09-10",
  end_date: "2026-09-14",
  price_total: 600,
  status: "accepted"
)

Booking.create!(
  bird: mephisto,
  renter: alain,
  beginning_date: "2026-08-30",
  end_date: "2026-09-01",
  price_total: 360,
  status: "pending"
)

Booking.create!(
  bird: ivan,
  renter: anna,
  beginning_date: "2026-08-12",
  end_date: "2026-08-13",
  price_total: 400,
  status: "accepted"
)

Booking.create!(
  bird: bobby,
  renter: jacques,
  beginning_date: "2026-08-18",
  end_date: "2026-08-19",
  price_total: 300,
  status: "pending"
)

Booking.create!(
  bird: moloch,
  renter: thea,
  beginning_date: "2026-09-02",
  end_date: "2026-09-03",
  price_total: 240,
  status: "accepted"
)

Booking.create!(
  bird: bernard,
  renter: marie,
  beginning_date: "2026-09-15",
  end_date: "2026-09-19",
  price_total: 1200,
  status: "pending"
)

Booking.create!(
  bird: george_the_third,
  renter: alain,
  beginning_date: "2026-08-28",
  end_date: "2026-08-29",
  price_total: 300,
  status: "accepted"
)

Booking.create!(
  bird: attila,
  renter: anna,
  beginning_date: "2026-09-07",
  end_date: "2026-09-09",
  price_total: 240,
  status: "pending"
)

puts "Finished!"
