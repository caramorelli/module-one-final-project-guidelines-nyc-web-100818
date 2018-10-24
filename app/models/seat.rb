# == Schema Information
#
# Table name: seats
#
#  id         :integer          not null, primary key
#  occupied?  :boolean
#  flight_id  :integer
#  class      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Seat <ActiveRecord::Base
  belongs_to :flight

end
