class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :album_name
      t.string :album_description
      t.integer :photo_id
      t.integer :user_id
      t.timestamps
    end 
  end
end
