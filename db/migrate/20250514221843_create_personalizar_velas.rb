class CreatePersonalizarVelas < ActiveRecord::Migration[7.2]
  def change
    create_table :personalizar_velas do |t|
      t.string :modelo
      t.string :color
      t.string :estilo

      t.timestamps
    end
  end
end
