class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.integer :album_id
      t.integer :photo_id
      t.string 
      t.timestamps
    end 
  end
end
