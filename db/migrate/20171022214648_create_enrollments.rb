class CreateEnrollments < ActiveRecord::Migration[5.1]
  def change
    create_table :enrollments do |t|
      t.references :person, foreign_key: true
      t.references :training_session, foreign_key: true

      t.timestamps
    end
  end
end
