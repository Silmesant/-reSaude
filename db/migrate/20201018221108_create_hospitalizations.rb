class CreateHospitalizations < ActiveRecord::Migration[6.0]
  def change
    create_table :hospitalizations do |t|
      t.date :initial_date
      t.date :final_date
      t.references :health_problem, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
