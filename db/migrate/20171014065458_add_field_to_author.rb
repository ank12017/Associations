class AddFieldToAuthor < ActiveRecord::Migration[5.1]
  def change
    add_column :authors, :email, :string
  end
end
