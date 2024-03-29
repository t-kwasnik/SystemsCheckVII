class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name, null: false
      t.string :country, null: false
      t.timestamps
    end

    add_index :manufacturers, :name, :unique => true
  end
end
