# Delete old data
User.destroy_all
Game.destroy_all
Comment.destroy_all

puts "Seeding users..."

u1 = User.create(user_name: "kevin" , password: "tech" )
u2 = User.create(user_name: "leslie", password: "flat iron")



puts "Seeding games..."
g1 = Game.create(prompt: "what is the opposite of a dog?", answers: "cat")
g2 = Game.create(prompt: "what do you wear to the beach?", answers: "hat")
g3 = Game.create(prompt: "what does a ghost say?", answers: "boo")
g4 = Game.create(prompt: "what is the opposite of small?", answers: "big")
g5 = Game.create(prompt: "what is the opposite of hi?", answers: "bye")
g6 = Game.create(prompt: "what is the opposite of null?", answers: "all")
g7 = Game.create(prompt: "what is the opposite of foo?", answers: "boo")
g8 = Game.create(prompt: "what is the opposite of wow?", answers: "woo")
g9 = Game.create(prompt: "what is the opposite of bottom?", answers: "top")
g10 = Game.create(prompt: "what is the opposite of non?", answers: "all")



puts "Seeding comments..."

# Comment.create(body:"nice", rating: 4, game_id: 7J, user_id: 4)  
# Comment.create(body:"cool", rating: 3, game_id: 6, user_id: 3)
Comment.create(body:"great", rating: 2, game_id: g1.id, user_id: u1.id)
Comment.create(body:"amazing", rating: 1, game_id: g2.id, user_id: u2.id)



puts "done!"