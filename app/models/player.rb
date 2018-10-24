# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  username   :string
#  age        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#





class Player < ActiveRecord::Base
  has_many :boards
  has_many :games, through: :boards

end
