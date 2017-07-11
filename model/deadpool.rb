class Deadpool < ActiveRecord::Base
  has_many :players

  def self.create_deadpool(params)
    deadpool = Deadpool.create(name: params[:deadpool_name])
    for j in 1..5
      if !params["player_#{j}_characters"].nil?
        player = deadpool.players.new #new player
        player.name = params["player_#{j}_name"] #set name
        player.save #save player

        params["player_#{j}_characters"].each do |character|
          character_id = Character.find_by(name: character).id
          player.slots.create(character_id: character_id)
        end

      end
    end
    return deadpool
  end

end
