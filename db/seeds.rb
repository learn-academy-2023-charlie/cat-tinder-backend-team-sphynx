mgames = [
  {
    name: 'Blue Archive',
    game_type: 'Tactical Role-Playing',
    file_size: '6.18 GB',
    summary: 'Blue Archive is a tactical role-playing game that allows the player to form and mobilize units of up to six members two \"Specials\" and four \"Strikers\" to participate in various military campaigns with. Students strengths can be enhanced in various ways, such as by increasing their levels, weapons, armor and skills.', 
    img: 'https://media.tenor.com/Z6EFYrE_GJkAAAAd/blue-archive-arisu.gif'
  },
  {
    name: 'Honkai Star Rail',
    game_type: 'JRPG style turn-based',
    file_size: '9.12 GB',
    summary: 'Honkai: Star Rail is a turn-based RPG very similar to old-school JRPGs (especially the Final Fantasy series). The game is split into two modes: overworld and battle. In the overworld, you run around the map and when you encounter an enemy group, you will "
    transfer" into the battle mode where you have to defeat the enemies in turn-based combat.', 
    img: 'https://media.tenor.com/VqEvUW1b7SQAAAAd/honkai-star-rail-honkai-star-rail-mc.gif'
  }
]

mgames.each do |each_mgame|
  Mgame.create each_mgame
  puts "creating mgame #{each_mgame}"
end