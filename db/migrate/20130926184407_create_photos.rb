class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :file
      t.reerences :album

      t.timestamps
    end 
  end
end
