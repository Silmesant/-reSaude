class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :zip_code
      t.string :street
      t.string :complement
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :establishment_name

      t.timestamps
    end
  end
end
