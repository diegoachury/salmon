class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :nombre
      t.text :descripcion
      t.references :admin
      t.datetime :fecha_inicia
      t.datetime :fecha_final
      t.references :user

      t.timestamps
    end
    add_index :tasks, :admin_id
    add_index :tasks, :user_id
  end
end
