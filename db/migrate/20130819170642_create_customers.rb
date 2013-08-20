class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :telefono2
      t.string :email
      t.string :ciudad
      t.references :admin

      t.timestamps
    end
    add_index :customers, :admin_id
  end
end
