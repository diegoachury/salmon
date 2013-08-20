class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :nombre
      t.string :referencia
      t.references :admin

      t.timestamps
    end
    add_index :categories, :admin_id
  end
end
