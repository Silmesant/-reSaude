class RemoveColumnsFromExams < ActiveRecord::Migration[6.0]
  def change
    remove_column :exams, :body_part, :string
    remove_column :exams, :laboratory_name, :string
    remove_column :exams, :address_id, :bigint
    remove_column :exams, :date, :date
  end
end
