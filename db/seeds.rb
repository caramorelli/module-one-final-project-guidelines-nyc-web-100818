


flight1a = Flight.create({ airline: 'United Airlines', origin: 'EWR', destination: 'LHR', arrival_time: '6:45 PM Saturday, Oct. 27, 2018', departure_time: '6:55 AM Friday, Oct. 26, 2018', duration: '7 hours and 10 minutes', max_occupancy: 150 })
flight1b = Flight.create({ airline: 'United Airlines', origin: 'LHR', destination: 'EWR', arrival_time: '3:45 PM Saturday, Nov. 5, 2018', departure_time: '11:55 PM Friday, Nov. 5, 2018', duration: '8 hours and 10 minutes', max_occupancy: 150 })


flight2a = Flight.create({ airline: 'British Airways', origin: 'BOS', destination: 'LHR', arrival_time: '9:30 PM Saturday, Oct. 27, 2018', departure_time: '8:55 AM Friday, Oct. 26, 2018', duration: '6 hours and 25 minutes', max_occupancy: 150 })
flight2b = Flight.create({ airline: 'British Airways', origin: 'LHR', destination: 'BOS', arrival_time: '9:30 PM Saturday, Nov. 1, 2018', departure_time: '8:55 AM Friday, Nov. 1 2018', duration: '5 hours and 30 minutes', max_occupancy: 150 })


user1 = User.create({ name: 'John Snow', party_count: 1, passport_id: '92566541600', travel_points: 15890, membership: false  })
user2 = User.create({ name: 'Arya Stark', party_count: 1, passport_id: '1234567800', travel_points: 210000, membership: true  })
user3 = User.create({ name: 'Cersei Lannister ', party_count: 2, passport_id: '1234567800', travel_points: 210000, membership: false  })

ticket1a = Ticket.create( { user_id: user1.id, flight_id: flight1a.id, class_status: 'economy', round_trip?: true, price: 655.00 } )
ticket1b = Ticket.create( { user_id: user1.id, flight_id: flight1b.id, class_status: 'economy', round_trip?: true, price: 655.00 } )

ticket2a = Ticket.create( { user_id: user3.id, flight_id: flight1a.id, class_status: 'first class', round_trip?: true, price: 810.00 } )
ticket2b = Ticket.create( { user_id: user3.id, flight_id: flight2b.id, class_status: 'first class', round_trip?: true, price: 810.00 } )

ticket3a = Ticket.create( { user_id: user2.id, flight_id: flight2a.id, class_status: 'economy', round_trip?: true, price: 655.00 } )
ticket3b = Ticket.create( { user_id: user2.id, flight_id: flight2b.id, class_status: 'economy', round_trip?: true, price: 655.00 } )

ticket4 = Ticket.create( { user_id: user2.id, flight_id: flight2a.id, class_status: 'economy', round_trip?: false, price: 530.00 } )
