class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :name
      t.integer :imageable_id
      

      t.timestamps
    end
  end
end
