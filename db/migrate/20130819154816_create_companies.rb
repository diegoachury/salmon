class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :nombre
      t.references :admin

      t.timestamps
    end
    add_index :companies, :admin_id
  end
end
