

# flight1 = Flight.create({ airline: 'United Airlines', origin: 'Newark Airport', destination: 'Heathrow Airport', arrival_time: '6:20 AM Saturday, Oct. 27, 2018', departure_time: '6:00 PM Friday, Oct. 26, 2018', duration: '7 hours and 20 minutes', max_occupancy: 150 })
#
# user1 = User.create({ name: 'Shrek', party_count: 5, passport_id: 'UA1298055003', travel_points: 120, membership: false  })
#
# user2 = User.create({ name: 'Prince Charming', party_count: 1, passport_id: 'UA7677980013', travel_points: 15890, membership: true  })
#
# user3 = User.create({ name: 'Snow White', party_count: 8, passport_id: 'UA7677980001', travel_points: 10230, membership: true  })
#
# user4 = User.create({ name: 'Goldilocks', party_count: 4, passport_id: 'UA76722280001', travel_points: 9876543211, membership: false  })
#
# ticket1 = Ticket.create( { user_id: user1.id, flight_id: flight1.id, class_status: 'economy', round_trip: true,  } )


#  user_id      :integer
#  flight_id    :integer
#  class_status :string
#  round_trip?  :boolean
#  price        :float
