class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :prompt
      t.string :answers
      
    
    end
  end
end
