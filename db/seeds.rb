puts "🌱 Destroying characters, arena, events..."
Character.destroy_all
Arena.destroy_all
Event.destroy_all

puts "🌱 Seeding characters..."
first_character = Character.create(name: 'Carl', alignment: 'villain', catchphrase:'I will burn the world to the ground!', personality: 'hot-tempered', strength: 'problem solving', weakness: 'water', background:'Hero parent who deserted him.')
second_character = Character.create(name: 'Blaze', alignment: 'hero', catchphrase:'I enjoy eating pizza', personality: 'mild-mannered', strength: 'people person', weakness: 'indecisive', background:'The son of Carl')
third_character = Character.create(name: 'Sir Dominoes', alignment: 'hero', catchphrase:'Did someone order takeout?!', personality: 'energetic', strength: 'provider', weakness: 'people with no money', background:'Growing up on the dark plains of Pizza Hut')
fourth_character = Character.create(name: 'Torok of the Dungeons', alignment: 'villain', catchphrase:'You will plead for death', personality: 'stern', strength: 'information extraction', weakness: 'proud to a fault', background:'Grew up the son of a butcher')
fifth_character = Character.create(name: 'The Strange One', alignment: 'hero', catchphrase:'Back in a flash!', personality: 'erratic', strength: 'speed', weakness: 'reckless', background:'Was blessed as a child by the Goddess of Celerity')
sixth_character = Character.create(name: 'The Abundant One', alignment: 'villain', catchphrase:'There is enough to go around...me', personality: 'calm and collected', strength: 'persuasive', weakness: 'arrogance', background:'Was blessed by the God of Gluttony')

first_arena = Arena.create(name: 'Pizza Dome', size: 'small', climate: 'brick oven hot', terrain:'deep-deep-dish')
second_arena = Arena.create(name: 'Butterfly of Death', size: 'medium', climate: 'luke warm', terrain:'woody')
third_arena = Arena.create(name: 'Thunder Rock', size: 'large', climate: 'arctic', terrain:'molten lava')
fourth_arena = Arena.create(name: 'The Crypt', size: 'medium', climate: 'dank', terrain:'marble')
fifth_arena = Arena.create(name: 'Village-Dockside', size: 'small', climate: 'drizzling', terrain:'water')
sixth_arena = Arena.create(name: 'Valhallah', size: 'large', climate: 'airy', terrain:'field')

Event.create(character: first_character, arena: second_arena, name: 'Tick-Tack-Toe Extreme', date: 'Tuesday' , type_of_event:'game')
Event.create(character: second_character, arena: third_arena, name: 'Big Glamour', date: 'Thursday' , type_of_event:'beauty competition')
Event.create(character: third_character, arena: first_arena, name: 'The 3,14th Annual Cookout', date: 'March 14th' , type_of_event:'potluck')
Event.create(character: fourth_character, arena: fourth_arena, name: 'Pat\'s Classy Seance', date: 'The first Saturday after All Hollows Eve' , type_of_event:'demon reveal party')
Event.create(character: fifth_character, arena: fifth_arena, name: 'The Deal', date: 'April 30' , type_of_event:'meet up')
Event.create(character: sixth_character, arena: sixth_arena, name: 'Odin\'s Toast', date: 'One eternity later' , type_of_event:'speech')


puts "✅ Done seeding!"
