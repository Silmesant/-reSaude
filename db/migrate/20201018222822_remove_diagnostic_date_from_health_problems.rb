class RemoveDiagnosticDateFromHealthProblems < ActiveRecord::Migration[6.0]
  def change
    remove_column :health_problems, :diagnostic_date, :string
  end
end
