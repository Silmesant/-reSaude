class CreateHealthProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :health_problems do |t|
      t.string :name
      t.string :fase
      t.string :diagnostic_date
      t.text :details

      t.timestamps
    end
  end
end
