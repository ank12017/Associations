class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.integer :name

      t.timestamps
    end
  end
end
