class CreateConsultations < ActiveRecord::Migration[6.0]
  def change
    create_table :consultations do |t|
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.references :exam, null: false, foreign_key: true
      t.references :health_problem, null: false, foreign_key: true
      t.string :symptoms
      t.boolean :routine

      t.timestamps
    end
  end
end
