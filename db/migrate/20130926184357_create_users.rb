class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :album_id
      t.integer :photo_id
      t.string 
      t.timestamps
    end 
  end
end
