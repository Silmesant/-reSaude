class AddConsultationToHealthProblems < ActiveRecord::Migration[6.0]
  def change
    add_reference :health_problems, :consultation, null: false, foreign_key: true
  end
end
