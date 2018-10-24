# == Schema Information
#
# Table name: tickets
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  flight_id    :integer
#  class_status :string
#  round_trip?  :boolean
#  price        :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Ticket <ActiveRecord::Base
  belongs_to :user
  belongs_to :flight
  # has_one :seat, through: :flight
end
