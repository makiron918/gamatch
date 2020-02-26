class AddVoiceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :voice, :string
  end
end
