puts "Seeding users..."

      User.create(user_name: "kevin" , password: "tech" )
      User.create(user_name: "leslie", password: "flat iron")



puts "Seeding games..."
Game.create(prompt: "what is the opposite of a dog?", answers: "cat")
Game.create(prompt: "what do you wear to the beach?", answers: "hat")
Game.create(prompt: "what does a ghost say?", answers: "boo")
Game.create(prompt: "what is the opposite of small?", answers: "big")



puts "Seeding comments..."

Comment.create(body:"nice", rating: 4, game_id: 7, user_id: 4)  
Comment.create(body:"cool", rating: 3, game_id: 6, user_id: 3)
Comment.create(body:"great", rating: 2, game_id: 5, user_id: 2)
Comment.create(body:"amazing", rating: 1, game_id: 4, user_id: 1)



puts "done!"