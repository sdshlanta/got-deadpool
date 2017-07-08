class Slot < ActiveRecord::Base
  belongs_to :player
  belongs_to :character

  # attr_accessor :player_id
  # attr_accessor :character_id
end
