class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name,               null: false
      t.string :platform,              null: false
      t.timestamps
    end
  end
end
