class CreateGyms < ActiveRecord::Migration[5.1]
  def change
    create_table :gyms do |t|
      t.string :name

      t.timestamps
    end
    add_index :gyms, :name, unique: true
  end
end
