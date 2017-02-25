class CreatePostVacantes < ActiveRecord::Migration[5.0]
  def change
    create_table :post_vacantes do |t|
      t.string :carrera
      t.string :area
      t.integer :nvacantes
      t.text :descripcion

      t.timestamps
    end
  end
end
