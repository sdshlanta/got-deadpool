class Character < ActiveRecord::Base
  belongs_to :player

  # attr_accessor :player_id
end
