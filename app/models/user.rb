# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  name          :string
#  party_count   :integer
#  passport_id   :string
#  travel_points :integer
#  membership    :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#



class User <ActiveRecord::Base
  has_many :tickets
  has_many :flights, through: :tickets
  has_many :seats, through: :flights


end
