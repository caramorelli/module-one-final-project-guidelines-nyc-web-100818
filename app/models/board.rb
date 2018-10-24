# == Schema Information
#
# Table name: boards
#
#  id             :integer          not null, primary key
#  player_id      :integer
#  game_id        :integer
#  player_rank    :integer
#  royalty_status :boolean
#  score          :integer
#  hints          :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#



class Board < ActiveRecord::Base
  belongs_to :player
  belongs_to :game


  
end
