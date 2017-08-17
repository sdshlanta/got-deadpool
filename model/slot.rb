class Slot < ActiveRecord::Base
  belongs_to :player
  belongs_to :character

  has_one :deadpool, through: :players

  # attr_accessor :player_id
  # attr_accessor :character_id

  def self.check_unique_slots(params)
    all_slots = []
    for j in 1..5
      return "Players require a name." if !params["player_#{j}_characters"].nil? && params["player_#{j}_name"].empty?
      return "Choose 5 characters for each player." if !params["player_#{j}_characters"].nil? && params["player_#{j}_characters"].length != 5
      all_slots += params["player_#{j}_characters"] if !params["player_#{j}_characters"].nil?
    end
    if all_slots.uniq.length == all_slots.length
      ## does not contain duplicates
      return true
    else
      ## contains duplicates
      return "Duplicate characters for players. Each player must choose a unique character."
    end
  end

end
