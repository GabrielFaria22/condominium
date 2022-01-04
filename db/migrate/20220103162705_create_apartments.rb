class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|

      t.integer :number, null: false
      t.text :observation

      t.timestamps
    end
  end
end
