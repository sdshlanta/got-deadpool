class Deadpool < ActiveRecord::Base
  has_many :players
  has_many :slots, through: :players

  def self.create_deadpool(params)
    deadpool = Deadpool.create(name: params[:deadpool_name])
    for j in 1..20
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

  def self.api_payload(deadpool_id)
    deadpool = Deadpool.find_by(id: deadpool_id)
    players = deadpool.players

    payload = {data: []}
    players.each do |player|
      characters_array = []
      player.slots.each do |slot|
        characters_array << slot.character
      end
      payload[:data] << {player: player, characters: characters_array}
    end
    payload.to_json
  end

end
