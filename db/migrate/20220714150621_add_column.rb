class AddColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :level, :integer
  end
end

