class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|

      t.string :title
      t.string :description

      t.belongs_to :person

      #TOPO - COLOCAR AUTOR DO EVENTO

      t.timestamps
    end
  end
end
