class RemoveHealthProblemFromConsultations < ActiveRecord::Migration[6.0]
  def change
    remove_column :consultations, :health_problem_id, :bigint
  end
end
