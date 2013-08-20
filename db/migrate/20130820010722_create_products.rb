class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :referencia_externa
      t.string :referencia_interna
      t.string :nombre
      t.string :imagen
      t.string :color
      t.string :talla
      t.decimal :precio_publico
      t.decimal :precio_mayorista
      t.decimal :precio_especial
      t.references :admin
      t.references :category

      t.timestamps
    end
    add_index :products, :admin_id
    add_index :products, :category_id
  end
end
