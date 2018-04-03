class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :nombre
      t.text :descripcion
      t.string :categoria
      t.boolean :habilitado, default:false
      t.date :fecha
      t.string :lugar
      t.string :hora
      t.string :link
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
