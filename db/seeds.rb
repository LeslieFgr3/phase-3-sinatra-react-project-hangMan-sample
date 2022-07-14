# Delete old data
User.destroy_all
Game.destroy_all
Comment.destroy_all

puts "Seeding users..."

u1 = User.create(user_name: "kevin" , password: "tech" )
u2 = User.create(user_name: "leslie", password: "flat iron")



puts "Seeding games..."
g1 = Game.create(prompt: "what is the opposite of a dog?", answers: "cat", level: 1)
g2 = Game.create(prompt: "what do you wear to the beach?", answers: "hat", level: 1)
g3 = Game.create(prompt: "what does a ghost say?", answers: "boo", level: 1)
g4 = Game.create(prompt: "what is the opposite of small?", answers: "big", level: 1)
g5 = Game.create(prompt: "what is the opposite of hi?", answers: "bye", level: 1)

g6 = Game.create(level: 2, prompt: "what is the opposite of up?", answers: "down")
g6 = Game.create(level: 2, prompt: "where do you go to get money?", answers: "bank")
g6 = Game.create(level: 2, prompt: "truth our ____?", answers: "dare")
g6 = Game.create(level: 2, prompt: "what season comes after summer?", answers: "fall")
g6 = Game.create(level: 2, prompt: "what is the opposite of right?", answers: "left")

Game.create(level: 3, prompt: "what food do people eat on tuesdays?", answers: "tacos")
Game.create(level: 3, prompt: "an _____ a day keeps the doctor away", answers: "apple")
Game.create(level: 3, prompt: "what is the opposite of tall?", answers: "short")




puts "Seeding comments..."

# Comment.create(body:"nice", rating: 4, game_id: 7J, user_id: 4)  
# Comment.create(body:"cool", rating: 3, game_id: 6, user_id: 3)
Comment.create(body:"great", rating: 2, game_id: g1.id, user_id: u1.id)
Comment.create(body:"amazing", rating: 1, game_id: g2.id, user_id: u2.id)



puts "done!"