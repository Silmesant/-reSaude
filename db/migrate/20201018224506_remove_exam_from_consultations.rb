class RemoveExamFromConsultations < ActiveRecord::Migration[6.0]
  def change
    remove_column :consultations, :exam_id, :bigint
  end
end
