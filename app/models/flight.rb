# == Schema Information

# Table name: flights

#  id             :integer          not null, primary key
#  airline        :string
#  origin         :string
#  destination    :string
#  arrival_time   :string
#  departure_time :string
#  duration       :string
#  max_occupancy  :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null




class Flight <ActiveRecord::Base
  has_many :tickets
  has_many :seats
  has_many :users, through: :tickets



end
