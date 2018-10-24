

class Flight <ActiveRecord::Base
  has_many :tickets
  has_many :seats
  has_many :users, through: :tickets

end
