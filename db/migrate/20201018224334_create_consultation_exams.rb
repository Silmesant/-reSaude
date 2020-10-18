class CreateConsultationExams < ActiveRecord::Migration[6.0]
  def change
    create_table :consultation_exams do |t|
      t.references :consultation, null: false, foreign_key: true
      t.references :exam, null: false, foreign_key: true
      t.string :body_part
      t.references :address, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
