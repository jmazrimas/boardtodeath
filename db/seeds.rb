# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create(username: "Gardoman" , email: "gardo@email.com", password: "password")
u2 = User.create(username: "danpark" , email: "danpark@email.com", password: "password")
u3 = User.create(username: "joemaz" , email: "joemaz@email.com", password: "password")
u4 = User.create(username: "dylanc" , email: "dylanc@email.com", password: "password", avatar: "https://anenglishwomaninsalem.files.wordpress.com/2012/01/letter-homer-sour.jpg")
u5 = User.create(username: "veronica" , email: "veronica@email.com", password: "password")

g01 = Game.create(title: "Monopoly", user_id: u1.id, description: "Game about Money", age_range: "All Ages", num_players: "2-8", play_time: "60+ min", initial_tags: "classic money board business", image: "http://cdn-static.denofgeek.com/sites/denofgeek/files/0/84//monopoly_cover.jpg" )
g02 = Game.create(title: "Life", user_id: u2.id, description: "Game about Life", age_range: "All Ages", num_players: "2-8", play_time: "60+ min", initial_tags: "classic money board family", image: "http://www.nowcultured.com/images/2013/08/18-childhood-board-games/game-of-life-board-cover.jpg")
g03 = Game.create(title: "Candyland", user_id: u3.id, description: "Game about Candyland", age_range: "All Ages", num_players: "2-8", play_time: "Up to 15 min", initial_tags: "candy sweet board children", image: "http://cdn.theatlantic.com/static/mt/assets/hua_hsu/orenstein_boardbox_post.jpg")
g04 = Game.create(title: "Snakes and Ladders", user_id: u4.id, description: "Game about Sakes and Ladders", age_range: "All Ages", num_players: "Up to 15 min", play_time: "60+ min", initial_tags: "board fun dice children", image: "http://c8.alamy.com/comp/B93Y0F/a-close-up-of-the-box-of-a-game-of-snakes-ladders-B93Y0F.jpg")
g05 = Game.create(title: "Jumanji", user_id: u5.id, description: "Game about Jumanji", age_range: "All Ages", num_players: "2-8", play_time: "60+ min", initial_tags: "board movie", image: "https://www.ethanproductions.com/boardgames-newDB/images/nocode20150527194623236.jpg")
g06 = Game.create(title: "Zathora", user_id: u5.id, description: "Game about Zathora", age_range: "All Ages", num_players: "2-8", play_time: "60+ min", initial_tags: "board movie", image: "https://images-na.ssl-images-amazon.com/images/I/51QrmGpxxNL._SX300_.jpg")

g07 = Game.create(title: "Uno", user_id: u5.id, description: "Game about Uno", age_range: "All Ages", num_players: "2-8", play_time: "Up to 15 min", initial_tags: "card colorful numbers", image: "http://www.mobygames.com/images/covers/l/213750-uno-psp-front-cover.jpg")
g08 = Game.create(title: "Battleship", user_id: u5.id, description: "Game about Battleship", age_range: "All Ages", num_players: "2", play_time: "Up to 15 min", initial_tags: "1v1 war battle fighting classic", image: "https://ashleybarron.files.wordpress.com/2011/08/battleship.jpg" )
g09 = Game.create(title: "Connect 4", user_id: u5.id, description: "Game about Connect 4", age_range: "All Ages", num_players: "2", play_time: "Up to 15 min", initial_tags: "1v1 red black", image: "https://images-na.ssl-images-amazon.com/images/I/61eEJMGY3YL._SY300_.jpg")
g10 = Game.create(title: "Checkers", user_id: u5.id, description: "Game about Checkers", age_range: "All Ages", num_players: "2", play_time: "Up to 15 min", initial_tags: "1v1 classic red black board", image: "http://i1-win.softpedia-static.com/screenshots/Checkers-and-Chess_2.png" )
g11 = Game.create(title: "Chess", user_id: u5.id, description: "Game about Chess", age_range: "All Ages", num_players: "2", play_time: "15 to 30 min", initial_tags: "1v1 classic white black board", image: "http://www.chess-space.com/wp-content/uploads/2012/11/CHESS.png" )
g12 = Game.create(title: "Boggle", user_id: u5.id, description: "Game about Boggle", age_range: "All Ages", num_players: "2-4", play_time: "15 to 30 min", initial_tags: "words dice spelling", image: "https://www.phactual.com/wp-content/uploads/2015/03/Boggle-300x198.jpg")
g13 = Game.create(title: "Clue", user_id: u5.id, description: "Game about Clue", age_range: "All Ages", num_players: "2-4", play_time: "15 to 30 min", initial_tags: "board classic mystery", image: "http://vignette2.wikia.nocookie.net/boardgames/images/5/57/ClueBoxArt.jpg/revision/latest?cb=20120418010028")
g14 = Game.create(title: "Clue Jr", user_id: u5.id, description: "Game about Clue Jr", age_range: "Children", num_players: "2-4", play_time: "Up to 15 min", initial_tags: "board classic mystery children", image: "https://img1.etsystatic.com/025/0/7146482/il_570xN.546633545_mosw.jpg")
g15 = Game.create(title: "Apples 2 Apples", user_id: u5.id, description: "Game about Apples 2 Apples", age_range: "All Ages", num_players: "2-8", play_time: "15 to 30 min", initial_tags: "humor funny random cards party", image: "http://heatherarmstrongphotography.com/blog/wp-content/uploads/2010/12/apples2spples.jpg" )
g16 = Game.create(title: "Stratego", user_id: u5.id, description: "Game about Stratego", age_range: "All Ages", num_players: "2-8", play_time: "60+ min", initial_tags: "strategy 1v1 board battle", image: "http://www.stratego.com/wp-content/themes/stratego/assets/img/stratego-boardgame.png")
g17 = Game.create(title: "Othello", user_id: u5.id, description: "Game about Othello", age_range: "All Ages", num_players: "2", play_time: "15 to 30 min", initial_tags: "1v1 black white board", image: "https://images-na.ssl-images-amazon.com/images/I/51CpGEsiBCL._AC_UL160_SR160,160_.jpg")
g18 = Game.create(title: "Taboo", user_id: u5.id, description: "Game about Taboo", age_range: "All Ages", num_players: "2-8", play_time: "15 to 30 min", initial_tags: "buzzer talking words", image: "http://www.newyorker.com/wp-content/uploads/2014/12/Gondelman-Taboo-973.jpg" )
g19 = Game.create(title: "Magic the Gathering", user_id: u5.id, description: "Game about Magic the Gathering", age_range: "Teen", num_players: "2-8", play_time: "60+ min", initial_tags: "cards strategy fantasy", image: "https://upload.wikimedia.org/wikipedia/en/a/aa/Magic_the_gathering-card_back.jpg" )
g20 = Game.create(title: "HeroClix", user_id: u5.id, description: "Game about HeroClix", age_range: "All Ages", num_players: "2-8", play_time: "60+ min", initial_tags: "strategy figures board comics", image: "http://www.heroclixworld.com/hcw/images_html/Articles/HotPreview/Hot_Collage.jpg")
g21 = Game.create(title: "DBC FlashCards", user_id: u5.id, description: "Game about DBC FlashCards", age_range: "All Ages", num_players: "2-8", play_time: "Up to 15 min", initial_tags: "cards trivia knowledge")
g22 = Game.create(title: "Pictionary", user_id: u5.id, description: "Game about Pictionary", age_range: "All Ages", num_players: "2-8", play_time: "30 to 60 min", initial_tags: "drawing party", image: "http://www.mobygames.com/images/covers/l/69565-pictionary-the-game-of-quick-draw-amiga-front-cover.jpg")
g23 = Game.create(title: "Trivial Pursuit", user_id: u5.id, description: "Game about Trivial Pursuit", age_range: "Adult", num_players: "2-8", play_time: "30 to 60 min", initial_tags: "triva cards", image: "https://s2.mzstatic.com/us/r30/Purple/a8/26/12/mzl.rcoewprl.jpg" )
g24 = Game.create(title: "Operation", user_id: u5.id, description: "Game about Operation", age_range: "Children", num_players: "2", play_time: "Up to 15 min", initial_tags: "doctor children", image: "https://img0.etsystatic.com/000/0/5874961/il_570xN.308245782.jpg")
g25 = Game.create(title: "Hungry Hungry Hippos", user_id: u5.id, description: "Game about Hungry Hungry Hippos", age_range: "Children", num_players: "2-4", play_time: "Up to 15 min", initial_tags: "children marbles", image: "https://s-media-cache-ak0.pinimg.com/564x/43/ee/04/43ee04beffea7aeeb3d19bd3896ceb9b.jpg")
g26 = Game.create(title: "Backgammon", user_id: u5.id, description: "Game about Backgammon", age_range: "All Ages", num_players: "2", play_time: "15 to 30 min", initial_tags: "board classic", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Bg-movement.svg/220px-Bg-movement.svg.png")
g27 = Game.create(title: "Tic-Tac-Toe", user_id: u5.id, description: "Game about Tic-Tac-Toe", age_range: "All Ages", num_players: "2", play_time: "Up to 15 min", initial_tags: "classic 1v1", image: "http://doc.qt.io/qt-4.8/images/qml-tic-tac-toe-example.png")
g28 = Game.create(title: "Cards Against Humanity", user_id: u5.id, description: "Game about Cards Against Humanity", age_range: "Adult", num_players: "2-8", play_time: "15 to 30 min", initial_tags: "humor cards mature", image: "https://images-na.ssl-images-amazon.com/images/I/41HD8SgDTFL._AC_UL320_SR282,320_.jpg")
g29 = Game.create(title: "Risk", user_id: u5.id, description: "Game about Risk", age_range: "All Ages", num_players: "2-8", play_time: "15 to 30 min", image: "http://onviolence.com/images/2010-10/risk-board-game.jpg")

o1 = Ownership.create(owned_game_id: 1, owner_id: u1.id)
o2 = Ownership.create(owned_game_id: 2, owner_id: u1.id)
o3 = Ownership.create(owned_game_id: 3, owner_id: u2.id)
o4 = Ownership.create(owned_game_id: 4, owner_id: u2.id)
o5 = Ownership.create(owned_game_id: 5, owner_id: u2.id)
o6 = Ownership.create(owned_game_id: 6, owner_id: u2.id)
o7 = Ownership.create(owned_game_id: 7, owner_id: u1.id)
o8 = Ownership.create(owned_game_id: 8, owner_id: u1.id)
o9 = Ownership.create(owned_game_id: 9, owner_id: u1.id)
o10 = Ownership.create(owned_game_id: 10, owner_id: u1.id)
o11 = Ownership.create(owned_game_id: 11, owner_id: u1.id)
o12 = Ownership.create(owned_game_id: 12, owner_id: u1.id)
o13 = Ownership.create(owned_game_id: 13, owner_id: u1.id)
o14 = Ownership.create(owned_game_id: 14, owner_id: u2.id)
o15 = Ownership.create(owned_game_id: 15, owner_id: u1.id)
o16 = Ownership.create(owned_game_id: 16, owner_id: u1.id)
o17 = Ownership.create(owned_game_id: 17, owner_id: u1.id)
o18 = Ownership.create(owned_game_id: 18, owner_id: u1.id)
o19 = Ownership.create(owned_game_id: 19, owner_id: u2.id)
o20 = Ownership.create(owned_game_id: 20, owner_id: u2.id)
o21 = Ownership.create(owned_game_id: 21, owner_id: u1.id)
o22 = Ownership.create(owned_game_id: 22, owner_id: u1.id)
o23 = Ownership.create(owned_game_id: 23, owner_id: u1.id)
o24 = Ownership.create(owned_game_id: 24, owner_id: u2.id)
o25 = Ownership.create(owned_game_id: 25, owner_id: u2.id)
o26 = Ownership.create(owned_game_id: 26, owner_id: u1.id)
o27 = Ownership.create(owned_game_id: 27, owner_id: u1.id)
o28 = Ownership.create(owned_game_id: 28, owner_id: u1.id)
o29 = Ownership.create(owned_game_id: 1, owner_id: u2.id)
o30 = Ownership.create(owned_game_id: 2, owner_id: u3.id)
o31 = Ownership.create(owned_game_id: 3, owner_id: u3.id)
o32 = Ownership.create(owned_game_id: 4, owner_id: u3.id)
o33 = Ownership.create(owned_game_id: 5, owner_id: u4.id)
o34 = Ownership.create(owned_game_id: 6, owner_id: u4.id)
o35 = Ownership.create(owned_game_id: 7, owner_id: u3.id)
o36 = Ownership.create(owned_game_id: 8, owner_id: u4.id)
o37 = Ownership.create(owned_game_id: 9, owner_id: u3.id)
o38 = Ownership.create(owned_game_id: 10, owner_id: u4.id)
o39 = Ownership.create(owned_game_id: 11, owner_id: u5.id)
o40 = Ownership.create(owned_game_id: 12, owner_id: u5.id)
o41 = Ownership.create(owned_game_id: 13, owner_id: u5.id)
o42 = Ownership.create(owned_game_id: 14, owner_id: u5.id)
o43 = Ownership.create(owned_game_id: 15, owner_id: u3.id)
o44 = Ownership.create(owned_game_id: 16, owner_id: u2.id)
o45 = Ownership.create(owned_game_id: 17, owner_id: u4.id)
o46 = Ownership.create(owned_game_id: 18, owner_id: u4.id)
o47 = Ownership.create(owned_game_id: 19, owner_id: u3.id)
o48 = Ownership.create(owned_game_id: 20, owner_id: u3.id)
o49 = Ownership.create(owned_game_id: 21, owner_id: u3.id)
o50 = Ownership.create(owned_game_id: 22, owner_id: u3.id)
o51 = Ownership.create(owned_game_id: 23, owner_id: u3.id)
o52 = Ownership.create(owned_game_id: 24, owner_id: u4.id)
o53 = Ownership.create(owned_game_id: 25, owner_id: u5.id)
o54 = Ownership.create(owned_game_id: 26, owner_id: u5.id)
o55 = Ownership.create(owned_game_id: 27, owner_id: u5.id)
o56 = Ownership.create(owned_game_id: 28, owner_id: u5.id)
o57 = Ownership.create(owned_game_id: 1, owner_id: u3.id)
o58 = Ownership.create(owned_game_id: 1, owner_id: u4.id)

c01 = Comment.create(user_id: 1, game_id: 1, content: "All American Classic!" )
c02 = Comment.create(user_id: 2, game_id: 1, content: "Who doesn't love Monopoly?" )
c03 = Comment.create(user_id: 3, game_id: 1, content: "Ehh.. overrated" )
c04 = Comment.create(user_id: 4, game_id: 1, content: "I agree with Joemaz" )
c05 = Comment.create(user_id: 5, game_id: 1, content: "No way best game ever!")
c06 = Comment.create(user_id: 1, game_id: 2, content: "Another fun classic" )
c07 = Comment.create(user_id: 2, game_id: 3, content: "Cool game" )
c08 = Comment.create(user_id: 3, game_id: 16, content: "Love it!" )
c09 = Comment.create(user_id: 4, game_id: 17, content: "This game is boring and for old heads!" )
c10 = Comment.create(user_id: 5, game_id: 19, content: "Fun, Immersive, and the cards can be worth a lot!" )
c11 = Comment.create(user_id: 1, game_id: 22, content: "Play this game drunk with friends!" )
c12 = Comment.create(user_id: 2, game_id: 23, content: "HARD!!! Who knows all this stuff???" )
c13 = Comment.create(user_id: 3, game_id: 5, content: "Fun game! Fun Movie!" )
c14 = Comment.create(user_id: 4, game_id: 5, content: "RIP Robin Williams!" )
c15 = Comment.create(user_id: 5, game_id: 6, content: "Not as fun as Jumanji!" )
c16 = Comment.create(user_id: 1, game_id: 7, content: "Uno.. best card game ever!" )
c17 = Comment.create(user_id: 2, game_id: 8, content: "One on one! You sunk my Battleship!" )
c18 = Comment.create(user_id: 3, game_id: 10, content: "King me!" )
c19 = Comment.create(user_id: 4, game_id: 10, content: "Too easy!" )
c20 = Comment.create(user_id: 5, game_id: 10, content: "I bet I can beat you!" )
c21 = Comment.create(user_id: 1, game_id: 13, content: "Mystery Classic!" )
c22 = Comment.create(user_id: 2, game_id: 13, content: "Is was Colonol Mustard in the Library with the candlestick!" )
c23 = Comment.create(user_id: 3, game_id: 15, content: "Most weird and random combinations!" )
c24 = Comment.create(user_id: 4, game_id: 16, content: "Fun!" )
c25 = Comment.create(user_id: 5, game_id: 17, content: "I play this with my Grandpa!" )
c26 = Comment.create(user_id: 1, game_id: 18, content: "I just love pressing the buzzer button..." )
c27 = Comment.create(user_id: 2, game_id: 26, content: "Not as fun as Chesse" )
c28 = Comment.create(user_id: 3, game_id: 26, content: "Whatttt?? no way.. better than chess!" )
c29 = Comment.create(user_id: 4, game_id: 14, content: "Perfect for my kid brother" )
c30 = Comment.create(user_id: 5, game_id: 24, content: "Inspired a whole generation to be come doctors!" )
c31 = Comment.create(user_id: 1, game_id: 25, content: "Eat those marbles!")
c32 = Comment.create(user_id: 2, game_id: 25, content: "Classic! Childhood memories!" )
c33 = Comment.create(user_id: 3, game_id: 28, content: "This game is awful... just plain awful" )
c34 = Comment.create(user_id: 4, game_id: 28, content: "Seriously.. dark humor at its worst!" )
c35 = Comment.create(user_id: 5, game_id: 28, content: "Evil... Pure evil!" )

users = [u1, u2, u3, u4, u5]

users.each do |user|
  Friendship.create(user: user, friend: u2) if user != u2
end

users.each do |user|
  Friendship.create(user: user, friend: u1) if user != u1
end

users.each do |user|
  Friendship.create(user: user, friend: u3) if user != u3
end









