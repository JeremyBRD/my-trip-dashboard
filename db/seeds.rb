# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Dropping database...'
Transport.destroy_all
Transportation.destroy_all
StepInfo.destroy_all
Step.destroy_all
Trip.destroy_all
User.destroy_all

puts 'Creating transports...'

bus = Transport.new(
  name: "bus",
  )
bus.save

plane = Transport.new(
  name: "plane",
  )
plane.save

taxi = Transport.new(
  name: "taxi",
  )
taxi.save

boat = Transport.new(
  name: "boat",
  )
boat.save

train = Transport.new(
  name: "train",
  )
train.save

puts 'Creating one user...'

jeremy = User.new(
  first_name: "jérémy",
  last_name: "barbedienne",
  email: "jbarbedienne3@gmail.com",
  password: "jbarbedienne3@gmail.com",
  home_town: "Paris",
  )
jeremy.save

puts 'Creating his trips with their steps...'

trip1 = Trip.new(
  user: jeremy,
  name: "My Argentinian Trip",
  starting_date: DateTime.new(2020,12,22),
  starting_timestamp: DateTime.new(2020,12,22),
  end_date: DateTime.new(2021,1,31),
  end_timestamp: DateTime.new(2021,1,31),
  )
trip1.save

step1 = Step.new(
  trip: trip1,
  name: 'Coucou',
)
step1.save

puts 'Creating another user...'

elise = User.new(
  first_name: "elise",
  last_name: "ddlt",
  email: "elise.dindault@gmail.com",
  password: "elise.dindault@gmail.com",
  home_town: "Paris",
  )
elise.save

puts 'Creating his trips with their steps...'

trip2 = Trip.new(
  user: elise,
  name: "Chouchous in Indonesia",
  starting_date: DateTime.new(2020,9,5),
  starting_timestamp: DateTime.new(2020,9,5),
  end_date: DateTime.new(2020,9,30),
  end_timestamp: DateTime.new(2020,9,30),
  )
trip2.save

trip2_step1 = Step.new(
  trip: trip2,
  name: 'Kuta',
)
trip2_step1.save

trip2_step2 = Step.new(
  trip: trip2,
  name: 'Ubud',
)
trip2_step2.save

trip2_step3 = Step.new(
  trip: trip2,
  name: 'Gili',
)
trip2_step3.save

trip2_step3_infos = StepInfo.new(
  step: trip2_step3,
  name: 'Gili Divers',
  info_type: 'activity'
)
trip2_step3_infos.save

trip2_step3_infos2 = StepInfo.new(
  step: trip2_step3,
  name: 'Kayak to other islands',
  info_type: 'activity'
)
trip2_step3_infos2.save

