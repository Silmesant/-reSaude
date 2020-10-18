class ChangeBoxToBeIntegerInMedicines < ActiveRecord::Migration[6.0]
  def change
    
    change_column :medicines, :box, 'integer USING CAST(box AS integer)'
  end
end
