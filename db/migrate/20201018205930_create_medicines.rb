class CreateMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :mg
      t.string :posology
      t.string :box

      t.timestamps
    end
  end
end
