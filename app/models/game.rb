# == Schema Information
#
# Table name: games
#
#  id               :integer          not null, primary key
#  category         :string
#  difficulty_level :string
#  points           :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#



class Game < ActiveRecord::Base
  has_many :boards
  has_many :players, through: :boards


end
