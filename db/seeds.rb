require 'faker'
require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)

200.times do
  User.create(
    {name: Faker::Name.name,
      party_count:rand(1..4),
      passport_id: Faker::IDNumber.valid,
      travel_points: Faker::Number.number(6),
      membership: Faker::Boolean.boolean  })
end
#################################

100.times do
depart = Faker::Time.forward(30, :all)
duration_hours = rand (1..24)


Flight.create(
  {airline:["United Airlines","American Airlines","JetBlue"].sample,
    origin: Faker::Address.city,
    destination: Faker::Address.city ,
    arrival_time: depart + duration_hours.hours,
    departure_time: depart,
    duration: duration_hours.to_s + " hour(s)",
    max_occupancy: Faker::Number.between(150, 300)})
  end

###############################

400.times do

  Ticket.create(
    { user_id: User.all.sample.id,
      flight_id: Flight.all.sample.id,
      class_status: ["economy","business","first class"].sample,
      round_trip?: Faker::Boolean.boolean,
      price: Faker::Number.between(500, 3000)})

end
