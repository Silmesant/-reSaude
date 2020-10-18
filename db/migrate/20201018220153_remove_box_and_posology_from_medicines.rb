class RemoveBoxAndPosologyFromMedicines < ActiveRecord::Migration[6.0]
  def change
    remove_column :medicines, :box, :integer
    remove_column :medicines, :posology, :string
  end
end
