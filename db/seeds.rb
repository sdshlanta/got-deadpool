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
  {name: "Pete", characters: ["Grey Worm", "Peter Baelish (Littlefinger)", "Melisandre", "Theon Greyjoy", "Night King"]}
]

##Character
character_list = [
  ["Brianne of Tarth", "https://vignette4.wikia.nocookie.net/gameofthrones/images/3/35/No_One_29.jpg"],
  ["Lord Beric", "https://vignette2.wikia.nocookie.net/gameofthrones/images/6/66/Beric_s6_infobox.jpg"],
  ["Grand Maester Qyburn", "https://vignette2.wikia.nocookie.net/gameofthrones/images/0/00/Qyburn-S5.png"],
  ["Rhaegal", "https://vignette2.wikia.nocookie.net/gameofthrones/images/2/20/Rhaegal_Season_4.jpg"],
  ["Lyanna Mormont", "https://vignette2.wikia.nocookie.net/gameofthrones/images/5/51/GoT-Sn7_FirstLook_02.jpg"],
  ["Tormund Giantsbane", "https://vignette2.wikia.nocookie.net/gameofthrones/images/e/e9/GOT_Season_7_13.jpg"],
  ["Jamie Lannister", "https://vignette4.wikia.nocookie.net/gameofthrones/images/c/c5/Jaime_s6_Ep08_.jpg"],
  ["Unella", "https://vignette3.wikia.nocookie.net/gameofthrones/images/1/1a/S06E06_-_Septa_Unella_Cropped.jpg"],
  ["Podrick Payne", "https://vignette3.wikia.nocookie.net/gameofthrones/images/4/48/GOT_Season_7_15.jpg"],
  ["Robett Glover", "https://vignette4.wikia.nocookie.net/gameofthrones/images/d/db/RobettGlover-Profile_%28brightened%29.jpg"],
  ["Jorah Mormont", "https://vignette1.wikia.nocookie.net/gameofthrones/images/c/c1/Ser_Jorah_s6_main_new.jpg"],
  ["Gregor Clegane (The Mountain)", "https://vignette4.wikia.nocookie.net/gameofthrones/images/d/d2/Gregor_Clegane_Season_7.jpg/revision/latest?cb=20170525060517"],
  ["Robin Arryn", "https://vignette4.wikia.nocookie.net/gameofthrones/images/7/74/Robin_Aaryn_Book_of_Stranger.jpg"],
  ["Eddison Tollett", "https://vignette1.wikia.nocookie.net/gameofthrones/images/2/25/Eddison_the_red_woman_s6.jpg"],
  ["Ilyn Payne", "https://vignette2.wikia.nocookie.net/gameofthrones/images/0/03/Ilyn_Payne_infobox.jpg"],
  ["Cersei Lannister", "https://vignette2.wikia.nocookie.net/gameofthrones/images/c/c7/Queen_Cersei_Main_The_winds_of_Winter.jpg"],
  ["Euron Greyjoy", "https://vignette3.wikia.nocookie.net/gameofthrones/images/4/4d/Game-of-thrones-6x5_euron_promo..jpg"],
  ["Ellaria Sand", "https://vignette2.wikia.nocookie.net/gameofthrones/images/3/39/Ellaria_S6.png"],
  ["Yara Greyjoy", "https://vignette2.wikia.nocookie.net/gameofthrones/images/a/a8/Game_of_thrones_6x5_yara_promo.jpg"],
  ["Missandei", "https://vignette3.wikia.nocookie.net/gameofthrones/images/d/d5/Missandei_Season_7_promo_image.PNG"],
  ["Grey Worm", "https://vignette3.wikia.nocookie.net/gameofthrones/images/a/ac/Oathbreaker_Grey_Worm_Infobox_Size.jpg"],
  ["Peter Baelish (Littlefinger)", "https://vignette3.wikia.nocookie.net/gameofthrones/images/b/b7/Petyr_Battle_of_Bastards_infobox_image.jpg"],
  ["Melisandre", "https://vignette2.wikia.nocookie.net/gameofthrones/images/3/3f/S06E00_-_Melisandre_Cropped.jpg"],
  ["Theon Greyjoy", "https://vignette2.wikia.nocookie.net/gameofthrones/images/6/65/605_Theon_Promo_new.jpg"],
  ["Night King", "https://vignette1.wikia.nocookie.net/gameofthrones/images/2/2d/NightsKingCrop_%28Hardhome%29.PNG"]
]

##Seed
character_list.each do |name, img_url|
  Character.create(name: name, img_url: img_url)
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
