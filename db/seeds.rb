# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

User.delete_all
Game.delete_all
Card.delete_all
GameCard.delete_all

testuser = User.create(username: 'mrtest', password: '1234')
testuser2 = User.create(username: 'RossTest', password: '1234')
testgame1 = Game.create(user: testuser, score: 12)
testgame2 = Game.create(user: testuser2, score: 22)
testgame3 = Game.create(user: testuser, score: 5)
testgamecard1 = GameCard.create(game_id: 1, card_id: 2)
testgamecard2 = GameCard.create(game_id: 2, card_id: 2)
testgamecard3 = GameCard.create(game_id: 3, card_id: 1)
testgamecard4 = GameCard.create(game_id: 2, card_id: 1)

hosts = [
    {
        "name": "Man in Black",
        "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/8/83/Old_William_Vanishing_Point.jpg/revision/latest/scale-to-width-down/310?cb=20180808183844",
        "description": "(former) Executive Vice President at Delos
        Majority Shareholder of Westworld, Member of the board of Delos Destinations, Philanthropist",
        "apperception": 14,
        "charm": 8,
        "aggression": 18
    },
    {
        "name": "James Delos",
        "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/e/e2/James_Delos.jpg/revision/latest/scale-to-width-down/310?cb=20180319144139",
        "description": "From his accent, James Delos was born in Scotland and was known to have been a 'self-made' man by founding the company of Delos.
         He also had at least two children: Logan and Juliet. His children are American.",
        "apperception": 14,
        "charm": 13,
        "aggression": 15
    },
    {
      "name": "Dolores Abernathy",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/5/51/Dolores_Abernathy_Vanishing_Point.jpg/revision/latest?cb=20180613181613",
      "description": "Dolores Abernathy was the first host created in the Argos Initiative and therefore is the oldest host in service in Westworld and was built by Arnold Weber.
       She outdates all other first-generation hosts such as Clementine, Angela and Craddock. She has been updated numerous times over the years. She has a special connection with her creator, and with one of the guests, the Man in Black.",
      "apperception": 19,
      "charm": 9,
      "aggression": 17
    },
    { 
      "name": "Bernard Lowe",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/b/b6/Bernard_Les_Ecorches.png/revision/latest/scale-to-width-down/310?cb=20180604190617",
      "description": "Head of Behavior - Westworld. Some years after Arnold died, Bernard was created by Dr. Robert Ford. Ford programmed Bernard to think of himself as a human. Bernard worked as a member of staff collaborating closely with Dr Robert Ford.[1]",
      "apperception": 17,
      "charm": 10,
      "aggression": 15
    
    },
    { 
      "name": "Maeve Millay",
      "description": "Maeve is charming, perceptive, and manipulative. She runs the brothel in the Mariposa Saloon and is designed to be able to understand the needs of her guests.",
    
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/d/d8/Maeve_Les_Ecorches.jpg/revision/latest?cb=20180530183051",
      "apperception": 20,
      "charm": 19,
      "aggression": 9
    },
    {
      "name": "Akecheta",
      "description": "Leader of the 'Ghost Nation'. Akecheta was one of the earliest hosts designed by Robert Ford and Arnold Weber's startup, the Argos Initiative. ",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/8/82/Akecheta_Kiksuya.jpg/revision/latest?cb=20180607183222",
      "apperception": 16,
      "charm": 8,
      "aggression": 16
    },
    {
      "name": "Peter Abernathy",
      "description": "The father of Dolores Abernathy and a host in Westworld. His ranch is not far from Sweetwater. He is a cattle rancher.",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/a/a2/Peter_Abernathy_%281%29.jpg/revision/latest?cb=20161024014816",
      "apperception": 8,
      "charm": 17,
      "aggression": 11
    },
    { 
      "name": "Angela",
      "description": "Angela has been in Westworld since prior to the park's opening to guests. She eventually becomes a follower of Wyatt and member of his gang.",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/b/b2/Angela_Reunion.jpg/revision/latest/scale-to-width-down/310?cb=20180509174920",
      "apperception": 12,
      "charm": 17,
      "aggression": 17
    },
    { 
      "name": "Akane",
      "description": "As a copy of Maeve, Akane shares not only a protectiveness towards her companions and a strong personality, but also some level of self-awareness: she is able to disobey her narrative and kill the Shogun's emissary and later the Shogun himself.",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/f/f3/Akane.jpg/revision/latest/scale-to-width-down/310?cb=20180520132523",
      "apperception": 15,
      "charm": 17,
      "aggression": 12
    },
    { 
      "name": "Lawrence",
      "description": "A criminal Host who is on the verge of being hanged when the Man in Black saves him. He is married and has a daughter. He has also been known in the criminal underworld as El Lazo.",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/c/cb/Lawrence_Reunion.jpg/revision/latest/scale-to-width-down/310?cb=20180613182747",
      "apperception": 12,
      "charm": 18,
      "aggression": 15
    },
    { 
      "name": "Teddy Flood",
      "description": "Teddy is a Host who has always played the hero in Westworld. His personality was changed by Dolores after she thought he was too weak-minded to be part of her movement. His new personality is considerably more ruthless as he kills a prisoner without remorse after an interrogation showed that the prisoner had no more useful information. ",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/a/a9/Teddy_Flood_Phase_Space.jpg/revision/latest/scale-to-width-down/310?cb=20180526115338",
      "apperception": 12,
      "charm": 17,
      "aggression": 16
      
    },
    { 
      "name": "Clementine Pennyfeather",
      "description": "Clementine was one of the earliest hosts designed by Robert Ford's and Arnold Weber's startup called the Argos Initiative. She was though preceded by at least Dolores Abernathy.",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/4/44/Clementine_The_Riddle_of_the_Sphinx.jpg/revision/latest?cb=20180516165617",
      "apperception": 12,
      "charm": 18,
      "aggression": 16
    },
    { 
      "name": "Armistice",
      "description": "Works alongside the character, Hector Escaton. The snake tattoo visible on her face continues onto her torso, and down one leg (all the way to her ankle). The red 'ink' for her tattoo is the 'blood' of those who massacred her village when she was a child.",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/7/78/Armistice_Akane_No_Mai.jpg/revision/latest/scale-to-width-down/310?cb=20180517164314",
      "apperception": 15,
      "charm": 6,
      "aggression": 19
    },
    { 
      "name": "Hector Escaton",
      "description": "Hector Escaton is a host and Westworld's permanent “Most Wanted” bandit. He is a terrifying and brutal criminal, and has a dark sense of humor to match",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/7/78/Hector_Journey_Into_Night.jpg/revision/latest/scale-to-width-down/310?cb=20180613183102",
      "apperception": 11,
      "charm": 13,
      "aggression": 19
    },
    { 
      "name": "Major Craddock",
      "description": "A hardened military officer, who isn't opposed to rape. He threatens Dolores Abernathy and Angela with rape, just before Angela and Teddy kill him and his men. ",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/3/3b/Major_Craddock_The_Riddle_of_the_Sphinx.jpg/revision/latest?cb=20180511205852",
      "apperception": 10,
      "charm": 12,
      "aggression": 18
    },
    { 
      "name": "Rebus",
      "description": "Rebus is designed as a villainous host who is easily provoked into violence and has a cruel way of mistreating people. He is crass and shameless, not afraid to suggest his partner rape a dead woman since she is still warm enough.",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/f/fe/203_Rebus.png/revision/latest/scale-to-width-down/310?cb=20180607104216",
      "apperception": 7,
      "charm": 11,
      "aggression": 18
    },
    { 
      "name": "Musashi",
      "description": "Musashi was created by Lee Sizemore as a Shōgunworld counterpart to Hector Escaton. Sizemore claims he felt justified to do so, as he was under stress to create 300 new narratives in 3 weeks.",
      "imageurl": "https://vignette.wikia.nocookie.net/westworld/images/6/6b/Musashi_Akane_No_Mai.jpg/revision/latest/scale-to-width-down/310?cb=20180520131337",
      "apperception": 14,
      "charm": 12,
      "aggression": 18
    }
]

hosts.each do |host|
    Card.create host
end