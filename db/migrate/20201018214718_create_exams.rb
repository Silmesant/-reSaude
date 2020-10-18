class CreateExams < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.string :name
      t.string :body_part
      t.string :laboratory_name
      t.references :address, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
