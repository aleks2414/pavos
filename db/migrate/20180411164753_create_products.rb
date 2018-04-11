class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.boolean :disponible, default:true
      t.string :nombre
      t.text :descripcion
      t.string :categoria
      t.string :precio
      t.string :tiempo
      t.string :foto
      t.string :foto2
      t.string :foto3
      t.references :user, foreign_key: true
      t.text :beneficios
      t.text :ingredientes

      t.timestamps
    end
  end
end
