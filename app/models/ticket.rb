

class Ticket <ActiveRecord::Base
  belongs_to :user
  belongs_to :flight
  # has_one :seat, through: :flight
end
