require 'byebug'

##Deadpool
deadpool_list = [
  "Jon's negativity"
]

##Player
player_list = [
  {name: "Tyler", characters: ["Brianne of Tarth", "Lord Beric", "Grand Maester Qyburn", "Rhaegal", "Lyanna Mormont"]},
  {name: "Jon", characters: ["Tormund Giantsbane", "Jamie Lannister", "Unella", "Podrick Payne", "Robett Glover"]},
  {name: "Mike Hayes", characters: ["Jorah Mormont", "Gregor Clegane (The Mountain)", "Robin Arryn", "Eddison Tollett", "Ilyn Payne"]},
  {name: "Ant", characters: ["Cersei Lannister", "Euron Greyjoy", "Ellaria Sand", "Yara Greyjoy", "Missandei"]},
  {name: "Pete", characters: ["Grey Worm", "Petyr Baelish (Littlefinger)", "Melisandre", "Theon Greyjoy", "Night King"]}
]

##Character
character_list = [
  ["Brianne of Tarth", "https://gameofthrones.wikia.com/wiki/Brienne_of_Tarth"],
  ["Lord Beric", "https://gameofthrones.wikia.com/wiki/Beric_Dondarrion"],
  ["Grand Maester Qyburn", "https://gameofthrones.wikia.com/wiki/Qyburn"],
  ["Rhaegal", "https://gameofthrones.wikia.com/wiki/Rhaegal"],
  ["Lyanna Mormont", "https://gameofthrones.wikia.com/wiki/Lyanna_Mormont"],
  ["Tormund Giantsbane", "https://gameofthrones.wikia.com/wiki/Tormund"],
  ["Jamie Lannister", "https://gameofthrones.wikia.com/wiki/Jaime_Lannister"],
  ["Unella", "https://gameofthrones.wikia.com/wiki/Unella"],
  ["Podrick Payne", "https://gameofthrones.wikia.com/wiki/Podrick_Payne"],
  ["Robett Glover", "https://gameofthrones.wikia.com/wiki/Robett_Glover"],
  ["Jorah Mormont", "https://gameofthrones.wikia.com/wiki/Jorah_Mormont"],
  ["Gregor Clegane (The Mountain)", "https://gameofthrones.wikia.com/wiki/Gregor_Clegane"],
  ["Robin Arryn", "https://gameofthrones.wikia.com/wiki/Robin_Arryn"],
  ["Eddison Tollett", "https://gameofthrones.wikia.com/wiki/Eddison_Tollett"],
  ["Ilyn Payne", "https://gameofthrones.wikia.com/wiki/Ilyn_Payne"],
  ["Cersei Lannister", "https://gameofthrones.wikia.com/wiki/Cersei_Lannister"],
  ["Euron Greyjoy", "https://gameofthrones.wikia.com/wiki/Euron_Greyjoy"],
  ["Ellaria Sand", "https://gameofthrones.wikia.com/wiki/Ellaria_Sand"],
  ["Yara Greyjoy", "https://gameofthrones.wikia.com/wiki/Yara_Greyjoy"],
  ["Missandei", "https://gameofthrones.wikia.com/wiki/Missandei"],
  ["Grey Worm", "https://gameofthrones.wikia.com/wiki/Grey_Worm"],
  ["Petyr Baelish (Littlefinger)", "https://gameofthrones.wikia.com/wiki/Petyr_Baelish"],
  ["Melisandre", "https://gameofthrones.wikia.com/wiki/Melisandre"],
  ["Theon Greyjoy", "https://gameofthrones.wikia.com/wiki/Theon_Greyjoy"],
  ["Night King", "https://gameofthrones.wikia.com/wiki/Night_King"]
]

##Seed
character_list.each do |name, url|
  Character.create(name: name, url: url, is_alive: true)
end

deadpool_list.each do |deadpool|
  deadpool = Deadpool.create(name: deadpool)

  player_list.each do |t|

    player = deadpool.players.new #new player
    player.name = t[:name] #set name
    player.save #save player

    #add slots
    t[:characters].each do |character|
      character_id = Character.find_by(name: character).id
      player.slots.create(character_id: character_id)
    end

  end
end
