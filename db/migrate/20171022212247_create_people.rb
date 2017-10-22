class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.date :birth
      t.string :registry_number
      t.integer :integration_id

      t.timestamps
    end
    add_index :people, :registry_number, unique: true
  end
end
