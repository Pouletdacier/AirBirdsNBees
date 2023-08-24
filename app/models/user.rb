class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :birds, foreign_key: :birdlord_id
  has_many :bookings, foreign_key: :renter_id
  has_many :bookings_as_birdlord, through: :birds, source: :bookings, class_name: "Booking"

  AVATAR = {
    "avatar_1" => "https://helium-editions.fr/je-suis-un-oiseau-de-la-ville/images/CORNEILLE-NOIRE.png",
    "avatar_2" => "https://helium-editions.fr/je-suis-un-oiseau-de-la-ville/images/FAUCON-CRECERELLE.png",
    "avatar_3" => "https://helium-editions.fr/je-suis-un-oiseau-de-la-ville/images/CANARD-MANDARIN.png",
    "avatar_4" => "https://helium-editions.fr/je-suis-un-oiseau-de-la-ville/images/BERNACHE-NONNETTE.png",
    "avatar_5" => "https://helium-editions.fr/je-suis-un-oiseau-de-la-ville/images/TROGLODYTE-MIGNON.png",
    "avatar_6" => "https://helium-editions.fr/je-suis-un-oiseau-de-la-ville/images/ROITELET-TRIPLE-BANDEAU.png",
    "avatar_7" => "https://helium-editions.fr/je-suis-un-oiseau-de-la-ville/images/PERRUCHE-A-COLLIER.png",
    "avatar_8" => "https://helium-editions.fr/je-suis-un-oiseau-de-la-ville/images/GRIMPEREAU-DES-JARDINS.png"
  }
end
