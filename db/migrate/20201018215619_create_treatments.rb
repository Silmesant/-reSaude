class CreateTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :treatments do |t|
      t.references :health_problem, null: false, foreign_key: true
      t.references :medicine, null: false, foreign_key: true
      t.references :consultation, null: false, foreign_key: true
      t.string :posology
      t.integer :box

      t.timestamps
    end
  end
end
