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
  },
  {
    name: 'Goddess of Victory: Nikke',
    game_type: 'Immersive sci-fi RPG shooter',
    file_size: '4.1 GB',
    summary: 'GODDESS OF VICTORY: NIKKE is an immersive sci-fi RPG shooter game, where you recruit and command various maidens to form a beautiful anime girl squad that specializes in wielding guns and other unique sci-fi weapons. Command and collect girls that have unique combat specialties to create your ultimate team!', 
    img: 'https://assets-prd.ignimgs.com/2022/03/07/battle-gif-02-1646680159065.gif'
  },
  {
    name: 'Arknight',
    game_type: 'Tower defense',
    file_size: '6 GB',
    summary: 'GArknights is a 2D mobile tower defense game where players deploy Operators to defend strategic map areas. Play through a variety of challenging maps and build up a base of operations to house your characters. Pros: +Variety of collectible heroes. +Deep strategic gameplay.', 
    img: 'https://media.tenor.com/DJKq_t0p88cAAAAd/arknights-patriot.gif'
  }
]

mgames.each do |each_mgame|
  Mgame.create each_mgame
  puts "creating mgame #{each_mgame}"
end