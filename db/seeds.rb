require 'faker'
require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)
#
#
# flight1 = Flight.create({ airline: 'United Airlines', origin: 'Newark Airport', destination: 'Heathrow Airport', arrival_time: '  6:20 AM Saturday, Oct. 27, 2018', departure_time: '6:00 PM Friday, Oct. 26, 2018', duration: '7 hours and 20 minutes', max_occupancy: 150 })
# #
# # user1 = User.create({ name: 'Shrek', party_count: 5, passport_id: 'UA1298055003', travel_points: 120, membership: false  })
# #
# user2 = User.create({ name: 'Prince Charming', party_count: 1, passport_id: 'UA7677980013', travel_points: 15890, membership: true  })
# #
# # user3 = User.create({ name: 'Snow White', party_count: 8, passport_id: 'UA7677980001', travel_points: 10230, membership: true  })
# #
# user4 = User.create({ name: 'Hansel', party_count: 2, passport_id: 'UA76722280001', travel_points: 9876543211, membership: false  })
# #
# ticket1 = Ticket.create( { user_id: user2.id, flight_id: flight1.id, class_status: 'economy', round_trip: true, price: 200.00 } )


#  user_id      :integer
#  flight_id    :integer
#  class_status :string
#  round_trip?  :boolean
#  price        :float
####################################
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




# User.all.each_with_index do |user, index|
#   cap = index ? index < 50 : 49
#   (0..cap).each do |i|
#     Ticket.create(
#       { user: user,
#         flight: Flight.all[i],
#         class_status: ["economy","business","first class"].sample,
#         round_trip?: Faker::Boolean.boolean,
#         price: Faker::Number.between(500, 3000)})
#   end
# end
