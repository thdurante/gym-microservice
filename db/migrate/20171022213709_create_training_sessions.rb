class CreateTrainingSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :training_sessions do |t|
      t.string :name
      t.string :frequency
      t.references :gym, foreign_key: true

      t.timestamps
    end
  end
end
