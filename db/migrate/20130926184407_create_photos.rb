class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :file
      t.string :photo_name
      t.string :photo_caption
      t.timestamps
    end 
  end
end
