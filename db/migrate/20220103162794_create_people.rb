class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|

      # t.references :apartment, foreign_key: true
      t.string :type #TOPO - FAZER COMO ENUM
      t.string :sex #TOPO - FAZER COMO ENUM
      t.integer :age
      t.string :phone_1
      t.string :phone_2
      t.string :phone_whatsapp
      t.string :social_media_1
      t.string :social_media_2
      t.string :email
      t.string :address
      t.string :bank_account
      t.string :document_1
      t.string :document_2
      t.string :profession
      t.string :real_estate
      t.string :real_estate_contact
      t.text :observation
      t.belongs_to :apartments



      t.timestamps
    end
  end
end
